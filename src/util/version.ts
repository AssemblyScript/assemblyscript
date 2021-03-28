export interface SemanticVersion {
  major: i16,
  minor: i16,
  patch: i16
}

export function getSemanticVersion(_version: string): SemanticVersion {
  let version = _version;
  if (!version.match(/^([0-9]+)\.([0-9]+)\.([0-9]+)/)) {
    version = "0.0.0";
  }
  const versionParts = version.split(".");
  return {
    major: parseInt(versionParts[0]),
    minor: parseInt(versionParts[1]),
    patch: parseInt(versionParts[2]),
  };
}
