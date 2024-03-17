enum ChatGroupAccess {
  owner(100),
  admin(90),
  user(0);

  const ChatGroupAccess(this.value);

  final int value;
}
