
import '../../entity/features/remote/remote_apod.dart';

abstract interface class ApodRemoteService {

  Future<RemoteApod> getApod();
}