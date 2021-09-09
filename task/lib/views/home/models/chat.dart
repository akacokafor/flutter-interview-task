import 'package:flutter/material.dart';
import 'package:task/constants/app-images.dart';

class Chat {
  final int id;
  final String name;
  final String message;
  final String image;
  final bool isOnline;

  Chat({
    required this.id,
    required this.name,
    required this.message,
    required this.image,
    required this.isOnline,
  });
}

class Chats {
  static List<Chat> chats = [
    Chat(
      id: 1,
      name: 'Will Knowles',
      message: 'Hey! How’s your dog? ∙ 1min',
      image: AppImages.will,
      isOnline: true,
    ),
    Chat(
      id: 2,
      name: 'Ryan Bond',
      message: 'Let’s go out! ∙ 5h',
      image: AppImages.ryan,
      isOnline: false,
    ),
    Chat(
      id: 3,
      name: 'Sirena Paul',
      message: 'Hey! Long time no see ∙ 1min',
      image: AppImages.sirena,
      isOnline: true,
    ),
    Chat(
      id: 4,
      name: 'Matt Chapman',
      message: 'You fed the dog? ∙ 6h',
      image: AppImages.matt,
      isOnline: false,
    ),
    Chat(
      id: 5,
      name: 'Laura Pierce',
      message: 'How are you doing? ∙ 7h',
      image: AppImages.laura,
      isOnline: false,
    ), 
    Chat(
      id: 6,
      name: 'Sirena Paul',
      message: 'Hey! Long time no see ∙ 1min',
      image: AppImages.sirena,
      isOnline: true,
    ),
    Chat(
      id: 7,
      name: 'Matt Chapman',
      message: 'You fed the dog? ∙ 6h',
      image: AppImages.matt,
      isOnline: false,
    ),
    Chat(
      id: 8,
      name: 'Laura Pierce',
      message: 'How are you doing? ∙ 7h',
      image: AppImages.laura,
      isOnline: false,
    ), 
  ];
}
