import {DataCache} from "./data-cache";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class ImageLoader{

    static crossOrigin:string = "*";

    constructor(){

    }
    load(url:string, onLoad:Function, onProgress:Function, onError:Function ):HTMLImageElement {

        var self = this;

        var cached = DataCache.getItem( url );

        if ( cached !== undefined ) {

            onLoad( cached );
            return;

        }

        var image = document.createElement( 'img' );

        image.addEventListener( 'load', function ( event ) {

            DataCache.add( url, this );

            if ( onLoad ) onLoad( this );

        }, false );

        if ( onProgress !== undefined ) {

            image.addEventListener( 'progress', function ( event ) {

                onProgress( event );

            }, false );

        }

        if ( onError !== undefined ) {

            image.addEventListener( 'error', function ( event ) {

                onError( event );

            }, false );

        }

        if ( ImageLoader.crossOrigin !== undefined ) image.crossOrigin = ImageLoader.crossOrigin;

        image.src = url;

        return image;
    }
}
