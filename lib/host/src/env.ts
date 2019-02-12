

export class Env {
  public memory: WebAssembly.Memory;
  constructor(memory: WebAssembly.MemoryDescriptor = {initial: 10000}){
    this.memory = new WebAssembly.Memory(memory);
  }

  get __imports__(): any {
    let memory = this.memory;
    return {
      "env":{
        memory
      }
    }
  }

}
