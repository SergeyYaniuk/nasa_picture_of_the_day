import 'package:nasa_picture_of_the_day/services/entity/features/remote/remote_apod.dart';
import 'package:nasa_picture_of_the_day/services/features/remote/apod_remote_service.dart';

class FakeApodRemoteService implements ApodRemoteService {
  @override
  Future<RemoteApod> getApod() async {
    await Future.delayed(const Duration(seconds: 1));
    return RemoteApod(
        date: "2024-04-16",
        explanation:
            "The explosion is over, but the consequences continue.  About eleven thousand years ago, a star in the constellation of Vela could be seen to explode, creating a strange point of light briefly visible to humans living near the beginning of recorded history.  The outer layers of the star crashed into the interstellar medium, driving a shock wave that is still visible today.  The featured image captures some of that filamentary and gigantic shock in visible light. As gas flies away from the detonated star, it decays and reacts with the interstellar medium, producing light in many different colors and energy bands. Remaining at the center of the Vela Supernova Remnant is a pulsar, a star as dense as nuclear matter that spins around more than ten times in a single second.   Monday's Eclipse Imagery: Notable Submissions to APOD",
        hdurl: "https://apod.nasa.gov/apod/image/2404/VelaSnr_CTIO_3989.jpg",
        mediaType: "image",
        serviceVersion: "v1",
        title: "Filaments of the Vela Supernova Remnant",
        url: "https://apod.nasa.gov/apod/image/2404/VelaSnr_CTIO_960.jpg");
  }
}
