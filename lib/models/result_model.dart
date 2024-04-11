class ResultModel
{
  late double result;
  late String status;
  late String range;
  ResultModel({required this.result});

  void assignStatus()
  {
    if(result<18.5)
      {
        status='UnderWeight';
        range='smaller than 18.5';
      }
    else if (result>18.5&&result<25)
      {
        status='NormalWeight';
        range='18.5 - 25';
      }
    else if (result>25&&result<30)
    {
      status='OverWeight';
      range='25 - 30';
    }
    else
      {
        status='Obese';
        range='greater than 30';
      }

  }



}