abstract class NewsStates{}
class InitialNewsStates extends NewsStates{}
class BottomBarNewsStates extends NewsStates{}
class NewsHealthLoadingState extends NewsStates{}
class NewsSportLoadingState extends NewsStates{}
class NewsScienceLoadingState extends NewsStates{}
class NewsSearchLoadingState extends NewsStates{}


class ChangeTheme extends NewsStates{}

class GetHealthNewsSuccessState extends NewsStates{}

class GetHealthNewsErrorState extends NewsStates{
  final String error;
  GetHealthNewsErrorState(this.error);
}

class GetSportNewsSuccessState extends NewsStates{}

class GetSportNewsErrorState extends NewsStates{
  final String error;
  GetSportNewsErrorState(this.error);
}

