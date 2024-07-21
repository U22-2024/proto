//
//  Generated code. Do not modify.
//  source: proto/user/v1/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userServiceCreateRequestDescriptor instead')
const UserServiceCreateRequest$json = {
  '1': 'UserServiceCreateRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'icon_url', '3': 4, '4': 1, '5': 9, '10': 'iconUrl'},
  ],
};

/// Descriptor for `UserServiceCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceCreateRequestDescriptor = $convert.base64Decode(
    'ChhVc2VyU2VydmljZUNyZWF0ZVJlcXVlc3QSEAoDdWlkGAEgASgJUgN1aWQSFAoFZW1haWwYAi'
    'ABKAlSBWVtYWlsEiEKDGRpc3BsYXlfbmFtZRgDIAEoCVILZGlzcGxheU5hbWUSGQoIaWNvbl91'
    'cmwYBCABKAlSB2ljb25Vcmw=');

@$core.Deprecated('Use userServiceCreateResponseDescriptor instead')
const UserServiceCreateResponse$json = {
  '1': 'UserServiceCreateResponse',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'icon_url', '3': 4, '4': 1, '5': 9, '10': 'iconUrl'},
  ],
};

/// Descriptor for `UserServiceCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceCreateResponseDescriptor = $convert.base64Decode(
    'ChlVc2VyU2VydmljZUNyZWF0ZVJlc3BvbnNlEhAKA3VpZBgBIAEoCVIDdWlkEhQKBWVtYWlsGA'
    'IgASgJUgVlbWFpbBIhCgxkaXNwbGF5X25hbWUYAyABKAlSC2Rpc3BsYXlOYW1lEhkKCGljb25f'
    'dXJsGAQgASgJUgdpY29uVXJs');

@$core.Deprecated('Use userServiceReadRequestDescriptor instead')
const UserServiceReadRequest$json = {
  '1': 'UserServiceReadRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `UserServiceReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceReadRequestDescriptor = $convert.base64Decode(
    'ChZVc2VyU2VydmljZVJlYWRSZXF1ZXN0EhAKA3VpZBgBIAEoCVIDdWlk');

@$core.Deprecated('Use userServiceReadResponseDescriptor instead')
const UserServiceReadResponse$json = {
  '1': 'UserServiceReadResponse',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'icon_url', '3': 4, '4': 1, '5': 9, '10': 'iconUrl'},
  ],
};

/// Descriptor for `UserServiceReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceReadResponseDescriptor = $convert.base64Decode(
    'ChdVc2VyU2VydmljZVJlYWRSZXNwb25zZRIQCgN1aWQYASABKAlSA3VpZBIUCgVlbWFpbBgCIA'
    'EoCVIFZW1haWwSIQoMZGlzcGxheV9uYW1lGAMgASgJUgtkaXNwbGF5TmFtZRIZCghpY29uX3Vy'
    'bBgEIAEoCVIHaWNvblVybA==');

@$core.Deprecated('Use userServiceDeleteRequestDescriptor instead')
const UserServiceDeleteRequest$json = {
  '1': 'UserServiceDeleteRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `UserServiceDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceDeleteRequestDescriptor = $convert.base64Decode(
    'ChhVc2VyU2VydmljZURlbGV0ZVJlcXVlc3QSEAoDdWlkGAEgASgJUgN1aWQ=');

@$core.Deprecated('Use userServiceDeleteResponseDescriptor instead')
const UserServiceDeleteResponse$json = {
  '1': 'UserServiceDeleteResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UserServiceDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceDeleteResponseDescriptor = $convert.base64Decode(
    'ChlVc2VyU2VydmljZURlbGV0ZVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use userServiceUpdateRequestDescriptor instead')
const UserServiceUpdateRequest$json = {
  '1': 'UserServiceUpdateRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'icon_url', '3': 4, '4': 1, '5': 9, '10': 'iconUrl'},
  ],
};

/// Descriptor for `UserServiceUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceUpdateRequestDescriptor = $convert.base64Decode(
    'ChhVc2VyU2VydmljZVVwZGF0ZVJlcXVlc3QSEAoDdWlkGAEgASgJUgN1aWQSFAoFZW1haWwYAi'
    'ABKAlSBWVtYWlsEiEKDGRpc3BsYXlfbmFtZRgDIAEoCVILZGlzcGxheU5hbWUSGQoIaWNvbl91'
    'cmwYBCABKAlSB2ljb25Vcmw=');

@$core.Deprecated('Use userServiceUpdateResponseDescriptor instead')
const UserServiceUpdateResponse$json = {
  '1': 'UserServiceUpdateResponse',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'icon_url', '3': 4, '4': 1, '5': 9, '10': 'iconUrl'},
  ],
};

/// Descriptor for `UserServiceUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceUpdateResponseDescriptor = $convert.base64Decode(
    'ChlVc2VyU2VydmljZVVwZGF0ZVJlc3BvbnNlEhAKA3VpZBgBIAEoCVIDdWlkEhQKBWVtYWlsGA'
    'IgASgJUgVlbWFpbBIhCgxkaXNwbGF5X25hbWUYAyABKAlSC2Rpc3BsYXlOYW1lEhkKCGljb25f'
    'dXJsGAQgASgJUgdpY29uVXJs');

