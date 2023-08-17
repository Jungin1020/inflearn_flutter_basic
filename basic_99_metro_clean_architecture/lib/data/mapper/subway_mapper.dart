import 'package:basic_99_metro_clean_architecture/data/dto/subway_result_dto.dart';
import 'package:basic_99_metro_clean_architecture/domain/model/subway.dart';

extension ToSubway on RealtimeArrivalList {
  Subway toSubway() {
    return Subway(
      trainLineName: trainLineNm ?? '',
      trainStatus: btrainSttus ?? '',
      trainStatusMsg: arvlMsg2 ?? '',
    );
  }
}
