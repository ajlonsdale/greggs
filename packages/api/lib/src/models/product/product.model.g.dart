// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      articleCode: json['articleCode'] as String,
      shopCode: json['shopCode'] as String,
      availableFrom: DateTime.parse(json['availableFrom'] as String),
      availableUntil: DateTime.parse(json['availableUntil'] as String),
      eatOutPrice: (json['eatOutPrice'] as num).toDouble(),
      eatInPrice: (json['eatInPrice'] as num).toDouble(),
      articleName: json['articleName'] as String,
      dayParts:
          (json['dayParts'] as List<dynamic>).map((e) => e as String).toList(),
      internalDescription: json['internalDescription'] as String,
      customerDescription: json['customerDescription'] as String,
      imageUri: json['imageUri'] as String,
      thumbnailUri: json['thumbnailUri'] as String,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'articleCode': instance.articleCode,
      'shopCode': instance.shopCode,
      'availableFrom': instance.availableFrom.toIso8601String(),
      'availableUntil': instance.availableUntil.toIso8601String(),
      'eatOutPrice': instance.eatOutPrice,
      'eatInPrice': instance.eatInPrice,
      'articleName': instance.articleName,
      'dayParts': instance.dayParts,
      'internalDescription': instance.internalDescription,
      'customerDescription': instance.customerDescription,
      'imageUri': instance.imageUri,
      'thumbnailUri': instance.thumbnailUri,
    };
