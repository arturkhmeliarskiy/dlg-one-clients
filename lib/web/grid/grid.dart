import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class Grid extends StatelessWidget {
  const Grid({
    required this.children,
    required this.width,
    super.key,
  });

  final List<Widget> children;
  final double width;

  @override
  Widget build(BuildContext context) {
    final len = children.length;

    if (width < 768) {
      switch (len) {
        case 1:
          return Grid1Xs(children: children);
        case 2:
          return Grid2Xs(children: children);
        case 3:
          return Grid3Xs(children: children);
        case 4:
          return Grid4Xs(children: children);
        case 5:
          return Grid5Xs(children: children);
        case 6:
          return Grid6Xs(children: children);
        case 7:
          return Grid7Xs(children: children);
        case 8:
          return Grid8Xs(children: children);
      }
    }
    else if (width >= 768 && width <= 1440) {
      switch (len) {
        case 1:
          return Grid1(children: children);
        case 2:
          return Grid2(children: children);
        case 3:
          return Grid3(children: children);
        case 4:
          return Grid4(children: children);
        case 5:
          return Grid5(children: children);
        case 6:
          return Grid6(children: children);
        case 7:
          return Grid7(children: children);
        case 8:
          return Grid8(children: children);
        case 9:
          return Grid9(children: children);
        case 10:
          return Grid10(children: children);
        case 11:
          return Grid11(children: children);
        case 12:
          return Grid12(children: children);
        case 13:
          return Grid13(children: children);
        case 14:
          return Grid14(children: children);
        case 15:
          return Grid15(children: children);
        case 16:
          return Grid16(children: children);
      }
    }
    else {
      switch (len) {
        case 1:
          return Grid1(children: children);
        case 2:
          return Grid2(children: children);
        case 3:
          return Grid3(children: children);
        case 4:
          return Grid4(children: children);
        case 5:
          return Grid5(children: children);
        case 6:
          return Grid6(children: children);
        case 7:
          return Grid7(children: children);
        case 8:
          return Grid8(children: children);
        case 9:
          return Grid9(children: children);
        case 10:
          return Grid10(children: children);
        case 11:
          return Grid11(children: children);
        case 12:
          return Grid12(children: children);
        case 13:
          return Grid13(children: children);
        case 14:
          return Grid14(children: children);
        case 15:
          return Grid15(children: children);
        case 16:
          return Grid16(children: children);
        case 17:
          return Grid17(children: children);
        case 18:
          return Grid18(children: children);
        case 19:
          return Grid19(children: children);
        case 20:
          return Grid20(children: children);
        case 21:
          return Grid21(children: children);
        case 22:
          return Grid22(children: children);
        case 23:
          return Grid23(children: children);
        case 24:
          return Grid24(children: children);
        case 25:
          return Grid25(children: children);
        case 26:
          return Grid26(children: children);
        case 27:
          return Grid27(children: children);
        case 28:
          return Grid28(children: children);
        case 29:
          return Grid29(children: children);
        case 30:
          return Grid30(children: children);
        case 31:
          return Grid31(children: children);
        case 32:
          return Grid32(children: children);
      }
    }
    return const Placeholder();
  }
}

class Grid1Xs extends StatelessWidget {
  const Grid1Xs({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr],
      rowSizes: [1.fr],
      children: children,
    );
  }
}

class Grid2Xs extends StatelessWidget {
  const Grid2Xs({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr],
      rowSizes: [1.fr, 1.fr],
      children: children,
    );
  }
}

class Grid3Xs extends StatelessWidget {
  const Grid3Xs({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr],
      children: children,
    );
  }
}

class Grid4Xs extends StatelessWidget {
  const Grid4Xs({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      children: children,
    );
  }
}

class Grid5Xs extends StatelessWidget {
  const Grid5Xs({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a
        b b
        c c
        d e
      ''',
      columnSizes: [1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
      ],
    );
  }
}

class Grid6Xs extends StatelessWidget {
  const Grid6Xs({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a
        b b
        c f
        d e
      ''',
      columnSizes: [1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
      ],
    );
  }
}

class Grid7Xs extends StatelessWidget {
  const Grid7Xs({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a
        b g
        c f
        d e
      ''',
      columnSizes: [1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
      ],
    );
  }
}

class Grid8Xs extends StatelessWidget {
  const Grid8Xs({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a t
        b g
        c f
        d e
      ''',
      columnSizes: [1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('t'),
      ],
    );
  }
}

class Grid1 extends StatelessWidget {
  const Grid1({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr],
      rowSizes: [1.fr],
      children: children,
    );
  }
}

class Grid2 extends StatelessWidget {
  const Grid2({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr, 1.fr],
      rowSizes: [1.fr],
      children: children,
    );
  }
}

class Grid3 extends StatelessWidget {
  const Grid3({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a b
        a c
      ''',
      columnSizes: [1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
      ],
    );
  }
}

class Grid4 extends StatelessWidget {
  const Grid4({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr],
      children: children,
    );
  }
}

class Grid5 extends StatelessWidget {
  const Grid5({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b
        c c d e
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
      ],
    );
  }
}

class Grid6 extends StatelessWidget {
  const Grid6({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b
        c d e f
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
      ],
    );
  }
}

class Grid7 extends StatelessWidget {
  const Grid7({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b g
        c d e f
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
      ],
    );
  }
}

class Grid8 extends StatelessWidget {
  const Grid8({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr],
      children: children,
    );
  }
}

class Grid9 extends StatelessWidget {
  const Grid9({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a b c d
        a b c d
        e f g h
        e f g j
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
      ],
    );
  }
}

class Grid10 extends StatelessWidget {
  const Grid10({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a b c d
        a b c d
        e f g h
        e f k j
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
      ],
    );
  }
}

class Grid11 extends StatelessWidget {
  const Grid11({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a b c d
        a b c d
        e f g h
        e l k j
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
      ],
    );
  }
}

class Grid12 extends StatelessWidget {
  const Grid12({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a b c d
        a b c d
        e f g h
        u l k j
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
      ],
    );
  }
}

class Grid13 extends StatelessWidget {
  const Grid13({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a b c d
        a b c t
        e f g h
        u l k j
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
      ],
    );
  }
}

class Grid14 extends StatelessWidget {
  const Grid14({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a b c d
        a b y t
        e f g h
        u l k j
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
      ],
    );
  }
}

class Grid15 extends StatelessWidget {
  const Grid15({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a b c d
        a x y t
        e f g h
        u l k j
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
      ],
    );
  }
}

class Grid16 extends StatelessWidget {
  const Grid16({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      children: children,
    );
  }
}

class Grid17 extends StatelessWidget {
  const Grid17({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x x y y t t
        e e f f g g h h
        u u l l k k j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
      ],
    );
  }
}

class Grid18 extends StatelessWidget {
  const Grid18({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x x y y t t
        e e f f g g h hh
        u u l l k k j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
      ],
    );
  }
}

class Grid19 extends StatelessWidget {
  const Grid19({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x x y y t t
        e e f f g g h hh
        u u l l k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
      ],
    );
  }
}

class Grid20 extends StatelessWidget {
  const Grid20({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x x y y t t
        e e f f g gg h hh
        u u l l k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
      ],
    );
  }
}

class Grid21 extends StatelessWidget {
  const Grid21({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x x y y t t
        e e f f g gg h hh
        u u l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
      ],
    );
  }
}

class Grid22 extends StatelessWidget {
  const Grid22({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x x y y t t
        e e f ff g gg h hh
        u u l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
      ],
    );
  }
}

class Grid23 extends StatelessWidget {
  const Grid23({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x x y y t t
        e e f ff g gg h hh
        u uu l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
        children[22].inGridArea('uu'),
      ],
    );
  }
}

class Grid24 extends StatelessWidget {
  const Grid24({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x x y y t t
        e ee f ff g gg h hh
        u uu l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
        children[22].inGridArea('uu'),
        children[23].inGridArea('ee'),
      ],
    );
  }
}

class Grid25 extends StatelessWidget {
  const Grid25({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x x y y t tt
        e ee f ff g gg h hh
        u uu l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
        children[22].inGridArea('uu'),
        children[23].inGridArea('ee'),
        children[24].inGridArea('tt'),
      ],
    );
  }
}

class Grid26 extends StatelessWidget {
  const Grid26({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x x y yy t tt
        e ee f ff g gg h hh
        u uu l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
        children[22].inGridArea('uu'),
        children[23].inGridArea('ee'),
        children[24].inGridArea('tt'),
        children[25].inGridArea('yy'),
      ],
    );
  }
}

class Grid27 extends StatelessWidget {
  const Grid27({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w w x xx y yy t tt
        e ee f ff g gg h hh
        u uu l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
        children[22].inGridArea('uu'),
        children[23].inGridArea('ee'),
        children[24].inGridArea('tt'),
        children[25].inGridArea('yy'),
        children[26].inGridArea('xx'),
      ],
    );
  }
}

class Grid28 extends StatelessWidget {
  const Grid28({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d d
        w ww x xx y yy t tt
        e ee f ff g gg h hh
        u uu l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
        children[22].inGridArea('uu'),
        children[23].inGridArea('ee'),
        children[24].inGridArea('tt'),
        children[25].inGridArea('yy'),
        children[26].inGridArea('xx'),
        children[27].inGridArea('ww'),
      ],
    );
  }
}

class Grid29 extends StatelessWidget {
  const Grid29({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c c d dd
        w ww x xx y yy t tt
        e ee f ff g gg h hh
        u uu l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
        children[22].inGridArea('uu'),
        children[23].inGridArea('ee'),
        children[24].inGridArea('tt'),
        children[25].inGridArea('yy'),
        children[26].inGridArea('xx'),
        children[27].inGridArea('ww'),
        children[28].inGridArea('dd'),
      ],
    );
  }
}

class Grid30 extends StatelessWidget {
  const Grid30({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b b c cc d dd
        w ww x xx y yy t tt
        e ee f ff g gg h hh
        u uu l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
        children[22].inGridArea('uu'),
        children[23].inGridArea('ee'),
        children[24].inGridArea('tt'),
        children[25].inGridArea('yy'),
        children[26].inGridArea('xx'),
        children[27].inGridArea('ww'),
        children[28].inGridArea('dd'),
        children[29].inGridArea('cc'),
      ],
    );
  }
}

class Grid31 extends StatelessWidget {
  const Grid31({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a a b bb c cc d dd
        w ww x xx y yy t tt
        e ee f ff g gg h hh
        u uu l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
        children[22].inGridArea('uu'),
        children[23].inGridArea('ee'),
        children[24].inGridArea('tt'),
        children[25].inGridArea('yy'),
        children[26].inGridArea('xx'),
        children[27].inGridArea('ww'),
        children[28].inGridArea('dd'),
        children[29].inGridArea('cc'),
        children[30].inGridArea('bb'),
      ],
    );
  }
}

class Grid32 extends StatelessWidget {
  const Grid32({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
        a aa b bb c cc d dd
        w ww x xx y yy t tt
        e ee f ff g gg h hh
        u uu l ll k kk j jj
      ''',
      columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr],
      columnGap: 12,
      rowGap: 12,
      children: [
        children[0].inGridArea('a'),
        children[1].inGridArea('b'),
        children[2].inGridArea('c'),
        children[3].inGridArea('d'),
        children[4].inGridArea('e'),
        children[5].inGridArea('f'),
        children[6].inGridArea('g'),
        children[7].inGridArea('h'),
        children[8].inGridArea('j'),
        children[9].inGridArea('k'),
        children[10].inGridArea('l'),
        children[11].inGridArea('u'),
        children[12].inGridArea('t'),
        children[13].inGridArea('y'),
        children[14].inGridArea('x'),
        children[15].inGridArea('w'),
        children[16].inGridArea('jj'),
        children[17].inGridArea('hh'),
        children[18].inGridArea('kk'),
        children[19].inGridArea('gg'),
        children[20].inGridArea('ll'),
        children[21].inGridArea('ff'),
        children[22].inGridArea('uu'),
        children[23].inGridArea('ee'),
        children[24].inGridArea('tt'),
        children[25].inGridArea('yy'),
        children[26].inGridArea('xx'),
        children[27].inGridArea('ww'),
        children[28].inGridArea('dd'),
        children[29].inGridArea('cc'),
        children[30].inGridArea('bb'),
        children[31].inGridArea('aa'),
      ],
    );
  }
}
