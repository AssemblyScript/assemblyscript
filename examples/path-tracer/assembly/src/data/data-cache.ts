/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class DataCache{

    private static cache:Map<string, any> = new Map<string, any>();
    static getItem(url:string):any{
        return DataCache.cache.get(url);
    }
    static add(url:string, item:any):any{
        DataCache.cache.set(url, item);
        return item;
    }

}
