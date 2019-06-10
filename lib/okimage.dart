library okimage;

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'dart:ui' as ui;


class _OKImageProvider extends ImageProvider<_OKImageProvider>{
  double scale = 1.0;

  @override
  ImageStreamCompleter load(_OKImageProvider key) {
    return new MultiFrameImageStreamCompleter(
        codec: _loadAsync(key),
        scale: key.scale,
        informationCollector: (StringBuffer information) {
          information.writeln('Image provider: $this');
          information.write('Image key: $key');
        }
    );
  }


  Future<ui.Codec> _loadAsync(_OKImageProvider key) async {
    assert(key == this);

    //final Uint8List bytes = await consolidateHttpClientResponseBytes(response);
    //return await ui.instantiateImageCodec(bytes);
  }

  @override
  Future<_OKImageProvider> obtainKey(ImageConfiguration configuration) {
    return new SynchronousFuture<_OKImageProvider>(this);
  }

}


class OKImage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _OKImageState();
  }

}


class _OKImageState extends State<OKImage>{
  @override
  Widget build(BuildContext context) {
    /*final RawImage image = new RawImage(
      image: _imageInfo?.image,
      width: widget.width,
      height: widget.height,
      scale: _imageInfo?.scale ?? 1.0,
      color: widget.color,
      colorBlendMode: widget.colorBlendMode,
      fit: widget.fit,
      alignment: widget.alignment,
      repeat: widget.repeat,
      centerSlice: widget.centerSlice,
      matchTextDirection: widget.matchTextDirection,
    );
    if (widget.excludeFromSemantics)
      return image;
    return new Semantics(
      container: widget.semanticLabel != null,
      image: true,
      label: widget.semanticLabel == null ? '' : widget.semanticLabel,
      child: image,
    );*/
    return null;
  }

}