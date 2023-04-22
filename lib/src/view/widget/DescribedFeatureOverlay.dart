import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ExtendedDescribedFeatureOverlay extends DescribedFeatureOverlay {
  ExtendedDescribedFeatureOverlay({
  	super.key, 
  	required super.featureId, 
  	required super.tapTarget,
  	required super.child,
  	required super.title, 
  	required super.description});

  @override
  Widget build(BuildContext context) {
    return DescribedFeatureOverlay(
    	featureId: featureId,
    	tapTarget: tapTarget,
    	child: child,
    	description: description,
    	backgroundColor: Colors.indigo.shade600,
    	pulseDuration: Duration(seconds: 1),
		  enablePulsingAnimation: true,
		  barrierDismissible: false,
		  overflowMode: OverflowMode.wrapBackground,
		  openDuration: Duration(seconds: 1),
		  contentLocation: ContentLocation.trivial,
    );
  }
}