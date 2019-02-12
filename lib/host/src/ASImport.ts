import {ASInstance, ASMemory, ASTable} from "../../loader"

export abstract class ASImport {
  public instance!: ASInstance;
  private _memory!: ASMemory;

  get __imports__(): object {
    let constructor = (<any>this).constructor;
    let className: string = constructor.name.toLowerCase();
    let __imports__: {[key:string]: any} = {};
    let _this = this;
    __imports__[className] = {
      _bindMemory(memory: ASMemory): void {
        _this.__bindMemory(memory);
      },
      _bindInstance(instance: ASInstance): void {
        _this.instance = instance;
      }
    };
    for (let name of Object.getOwnPropertyNames(constructor.prototype)){
      if (name !== "constructor" && !name.startsWith("__")){
        __imports__[className][name] = (<any>this)[name].bind(this);
      }
    }
    return __imports__;
  }
  get memory(): ASMemory {
    return (this.instance && this.instance.memory) || this._memory;
  }
  get table(): ASTable {
    return this.instance.table;
  }

  __bindInstance(instance: ASInstance): void {
    this.instance = instance;
  }

  __bindMemory(memory: ASMemory): void {
    this._memory = memory;
  }

  static createImport(...args: any[]): any {
    let imports = {};
    for (let arg of args){
      let obj;
      if (typeof arg == "function"){
        obj = new arg();
      }else {
        obj = arg;
      }
      imports = {...imports, ...obj.__imports__}
    }
    return imports;
  }

}
