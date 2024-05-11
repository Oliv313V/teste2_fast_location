import 'package:flutter_fast_location_vaos1/src/modules/home/model/address_model.dart';
import 'package:flutter_fast_location_vaos1/src/modules/home/repositories/home_api_repository';
import 'package:flutter_fast_location_vaos1/src/modules/home/repositories/home_local_repositoriy';

class HomeService {
  final HomeApiRepository apiRepository;
  final HomeLocalRepository localRepository;

  HomeService(this.apiRepository, this.localRepository);

  Future<AddressModel?> getAddressFromCEP(String cep) async {
    final address = await apiRepository.getAddressFromCEP(cep);
    if (address != null) {
      await localRepository.addAddressHistory(address);
      await localRepository.addAddressRecent(address);
    }
    return address;
  }

  Future<List<AddressModel>?> getAddressHistory() {
    return localRepository.getAddressHistory();
  }

  Future<List<AddressModel>?> getAddressRecent() {
    return localRepository.getAddressRecent();
  }

  getAddressHistoryList() {}
}
