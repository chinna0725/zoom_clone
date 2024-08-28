// import 'package:jitsi_meet/feature_flag/feature_flag.dart';
// import 'package:jitsi_meet/jitsi_meet.dart';

import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/resources/firestore_methods.dart';

// guewst   - https://meet.jit.si/moderated/a0914046db3560ab0b3f746e6db55ea7e2e398b754b30c3bb9c620d0be96104b
//modurator - https://moderated.jitsi.net/8aad4b16152641ebbbd49aabb0126b1007c82f379473430da98ec755a4f5a7a1
class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();
  final FirestoreMethods _firestoreMethods = FirestoreMethods();

  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      // FeatureFlag featureFlag = FeatureFlag();
      // featureFlag.welcomePageEnabled = false;
      // featureFlag.resolution = FeatureFlagVideoResolution
      //     .MD_RESOLUTION; //
      //Limit video resolution to 360p
      Map<String, Object> featureFlags = {};

      String name;
      if (username.isEmpty) {
        name = _authMethods.user.displayName!;
      } else {
        name = username;
      }
      var options = JitsiMeetingOptions(
          roomNameOrUrl: roomName,
          userDisplayName: name,
          userEmail: _authMethods.user.email,
          userAvatarUrl: _authMethods.user.photoURL,
          isAudioMuted: isAudioMuted,
          isVideoMuted: isVideoMuted,
          featureFlags: featureFlags,
          serverUrl: 'https://easyconference.uibk.ac.at');
      // serverUrl:
      //     "https://meet.jit.si/moderated/a0914046db3560ab0b3f746e6db55ea7e2e398b754b30c3bb9c620d0be96104b");
      // ..userDisplayName = name
      // ..userEmail = _authMethods.user.email
      // ..userAvatarURL = _authMethods.user.photoURL
      // ..audioMuted = isAudioMuted
      // ..videoMuted = isVideoMuted;

      _firestoreMethods.addToMeetingHistory(roomName);
      await JitsiMeetWrapper.joinMeeting(
          options: options,
          listener: JitsiMeetingListener(
            onOpened: () => print("onOpened"),
            onConferenceWillJoin: (url) {
              print("onConferenceWillJoin: url: $url");
            },
          ));
    } catch (error) {
      print("error: $error");
    }
  }
}
