import { Thread } from './trace-worker';
/**
 * Created by Nidin Vinayakan on 08-02-2016.
 */
export class ThreadPool {
    public static get maxThreads(): number {
        return navigator['hardwareConcurrency'] - 4 || 2;
    }

    private static pool: Thread[];

    public static getThreads(): Thread[] {
        console.info('Available Threads:' + ThreadPool.maxThreads);

        if (ThreadPool.pool) {
            return ThreadPool.pool;
        }
        var threads: Thread[] = [];
        for (var i: number = 0; i < ThreadPool.maxThreads; i++) {
            threads.push(new Thread('Thread:#' + i, i));
        }
        ThreadPool.pool = threads;
        return threads;
    }
}
