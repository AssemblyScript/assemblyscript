module.exports = demangle;

/** Demangles AssemblyScript module exports to a friendly object structure. */
function demangle(exports) {
  var root = {};
  for (let internalName in exports) {
    if (!exports.hasOwnProperty(internalName)) continue;
    let elem = exports[internalName];
    let parts = internalName.split(".");
    let curr = root;
    while (parts.length > 1) {
      let part = parts.shift();
      if (!curr.hasOwnProperty(part)) curr[part] = {};
      curr = curr[part];
    }
    let name = parts[0];
    let hash = name.indexOf("#");
    if (hash >= 0) {
      let className = name.substring(0, hash);
      let classElem = curr[className];
      if (typeof classElem === "undefined" || !classElem.prototype) {
        let ctor = function(...args) {
          return ctor.wrap(ctor.prototype.constructor(...args));
        };
        ctor.prototype = {};
        ctor.wrap = function(thisValue) {
          return Object.create(ctor.prototype, { "this": { value: thisValue, writable: false } });
        };
        if (classElem) Object.getOwnPropertyNames(classElem).forEach(name =>
          Object.defineProperty(ctor, name, Object.getOwnPropertyDescriptor(classElem, name))
        );
        curr[className] = ctor;
      }
      name = name.substring(hash + 1);
      curr = curr[className].prototype;
      if (/^(get|set):/.test(name)) {
        if (!curr.hasOwnProperty(name = name.substring(4))) {
          let getter = exports[internalName.replace("set:", "get:")];
          let setter = exports[internalName.replace("get:", "set:")];
          Object.defineProperty(curr, name, {
            get: function() { return getter(this.this); },
            set: function(value) { setter(this.this, value); }
          });
        }
      } else curr[name] = function(...args) { return elem(this.this, ...args); };
    } else {
      if (/^(get|set):/.test(name)) {
        if (!curr.hasOwnProperty(name = name.substring(4))) {
          Object.defineProperty(curr, name, {
            get: exports[internalName.replace("set:", "get:")],
            set: exports[internalName.replace("get:", "set:")]
          });
        }
      } else curr[name] = elem;
    }
  }
  return root;
}
