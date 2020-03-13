     SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index){
                  return Placeholder(
                    color: Colors.red,
                    fallbackHeight: 100.0,

                  );

                },
              childCount: 10,
            ),
          ),