'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "98e97ac6ed5c96497bceef45b51ad1fa",
"/": "98e97ac6ed5c96497bceef45b51ad1fa",
"main.dart.js": "c0341a6f8be6a925da29bf9400235da5",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "eddc540284bc79048b6eb25ca3219f57",
"assets/AssetManifest.json": "8099ee1355d1fd131aec3e2b95cf5967",
"assets/NOTICES": "7535e44dfaff523dc646eb74a48fc7d6",
"assets/FontManifest.json": "05eea3c211b2e09402b71da465a281bb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/duck.png": "70bcdcf6ef536d062d9be5594b12fb8d",
"assets/assets/comecar_select_action.png": "d52960bbb907e492debfbfaef74e79a2",
"assets/assets/duck_select_action.png": "e2e2310f5a38b0f5d2db80289336dc16",
"assets/assets/fireworks.png": "c4c4459631d07cc0876cda8f26b4e86b",
"assets/assets/audios/elefante.mp3": "42e6c2bd7b18743f6f37a4c959e7e902",
"assets/assets/audios/tigre.mp3": "03e519d3a8f22f21a742d44cd361e8fd",
"assets/assets/audios/greyfox-vs-coon.mp3": "50eeea7e6939629465abd77492cfa134",
"assets/assets/audios/porco.mp3": "2e6a654f2b3403cb3cd6d8f575026e69",
"assets/assets/audios/baleia.mp3": "61b94386d2a54335ebe861dcb41c7ebc",
"assets/assets/audios/macaco.mp3": "fca09ad936916be8a7ff8253c53284fd",
"assets/assets/audios/pato.mp3": "ab2040cf260b173a6b95598a448e4af4",
"assets/assets/audios/pato2.mp3": "f5ede55382d756440018ff17900d5bcb",
"assets/assets/audios/leao.mp3": "46f834a392b17ef672eaad4ef20fd50f",
"assets/assets/audios/vaca.mp3": "f4cb61c9605dd9a367200c8f06029517",
"assets/assets/background2.png": "7558982a2c8654a2d321c7ad0d182e9f",
"assets/assets/elephant_icon.png": "509582b6e37901688aa523dbb80504cb",
"assets/assets/continuar_select_action.png": "6d872a3448b8b8d549a49ef962b1c578",
"assets/assets/tiger_icon.png": "174a13a2dcdf9492af606fb7c4603e13",
"assets/assets/hotel/hotel_booking.png": "89f1fbbdc7d80e4a6292622d7f929690",
"assets/assets/hotel/hotel_1.png": "a9ae40f2bd59b4e56bc3d6ddd98768a5",
"assets/assets/hotel/hotel_2.png": "1303973de1c8e2226a34b770aaa50fb0",
"assets/assets/hotel/hotel_3.png": "2f6ae1319a610cea2b8bb86c6c789e9b",
"assets/assets/hotel/hotel_4.png": "d5a6dfd83f984b2b8d5e408e74018412",
"assets/assets/hotel/hotel_5.png": "ee2a764f889388f9e60a981028fe1e91",
"assets/assets/images/userImage.png": "afc26cb27789a846c7047e57cb9c6422",
"assets/assets/images/feedbackImage.png": "5f8e9064f54cf51a70fee2da78a5b014",
"assets/assets/images/inviteImage.png": "4d337cf829c67258aa3aae385f5ec31c",
"assets/assets/images/fundo1.png": "976e5b0d77c64f1d680174628176d070",
"assets/assets/images/menino_maluqinho.png": "dd0c015f8b1eb7be4a94ffe896905cdf",
"assets/assets/images/supportIcon.png": "2eb21b9823a538c996ec667e17388322",
"assets/assets/images/logo.png": "5a1558bee67b82a8adece06440f577ab",
"assets/assets/images/livro5.png": "0d93ad9460ad6caa8d70630143d232de",
"assets/assets/images/helpImage.png": "2bff0fc93675d32f89db50f2d3e2a5b1",
"assets/assets/images/livro4.png": "c5f94f706c851b65da788f19d1c8c029",
"assets/assets/images/livro6.png": "fdb340cfcad6dbba8c1c6742a334f1fe",
"assets/assets/images/livro3.png": "bd773da89bdf633e05ebb12918451b79",
"assets/assets/images/livro1.png": "815d87d30d5714af0c15600115d2442d",
"assets/assets/share_icon.png": "ff90b54193ed5169a29c94c30f1c5e8d",
"assets/assets/add_icon.png": "d3fb48c1944ae15f16a8de1631157386",
"assets/assets/river_icon.png": "0f69256effa40b43c87100282dd1082a",
"assets/assets/book_icon.png": "f763597c176ada957dac639e1165d57f",
"assets/assets/fitness_app/fitness_app.png": "bd55b7dc68210a0a5e6fa9341a47dbaf",
"assets/assets/fitness_app/bell.png": "929723572aa737a354244ca14fe5659b",
"assets/assets/fitness_app/tab_4s.png": "40c45bbb7601c039da61be3e3c0f7520",
"assets/assets/fitness_app/tab_3s.png": "a9093dcadf7724797ee22a5a802da7ad",
"assets/assets/fitness_app/tab_1.png": "629111ba46f6559071bcf25d2859a7ad",
"assets/assets/fitness_app/tab_3.png": "2a8f733675e2d8a7c6e9ac67a535bbf2",
"assets/assets/fitness_app/tab_2.png": "6506b7480618968b3daee97570927f65",
"assets/assets/fitness_app/burned.png": "2ffad4b8dff525e57473142f0265b6bd",
"assets/assets/fitness_app/area1.png": "9cbfec64c29ec6821547f1c5093f38b7",
"assets/assets/fitness_app/bottle.png": "840d3c89291f9d3b0a859d7479c10d0c",
"assets/assets/fitness_app/area3.png": "e85a8d2207edfb0325369d93982fba03",
"assets/assets/fitness_app/area2.png": "2863c486c15808e8f105ccac2febfdbc",
"assets/assets/fitness_app/dinner.png": "d61779f47b560d09b0df15b346323ac4",
"assets/assets/fitness_app/tab_4.png": "f679006d5a49884f9ae89628d1d62d88",
"assets/assets/fitness_app/tab_2s.png": "d270e94953ae9b7f377c5b253345374d",
"assets/assets/fitness_app/tab_1s.png": "fbd3aa5ed884a724f0435521586f6585",
"assets/assets/fitness_app/snack.png": "14a3e91c7a517b0a2f71dbcd86d2104d",
"assets/assets/fitness_app/lunch.png": "6855159f38835c1f03289b102a2e8b52",
"assets/assets/fitness_app/glass.png": "266bca612c726abd6e481a4d890cef8e",
"assets/assets/fitness_app/breakfast.png": "1d2b0e6a7e46a44723131c663471f811",
"assets/assets/fitness_app/eaten.png": "3f7d6f5aea8996d15d52c4c2268abd45",
"assets/assets/fitness_app/back.png": "af6b0e6121d6eb48289cce3a3b8d8963",
"assets/assets/fitness_app/runner.png": "efb26bd46e91d305bda3b4b3c5a57c54",
"assets/assets/atividade_select_action.png": "5c9af2bbbadf763297963ed697643ba9",
"assets/assets/frog_icon.png": "c1a5ba49307f31418b2b4b47ad1af803",
"assets/assets/record_icon.png": "4477627817e9b1d43ffa2b8024aad7a2",
"assets/assets/bear_icon.png": "0a2e1748402907288027b2a775bdc829",
"assets/assets/lion_icon.png": "2ca261d8091130cc5850ce089ad72dc1",
"assets/assets/next_icon.png": "cfae998ed1ebbdd4bebe79dfc9499d27",
"assets/assets/image%252023.png": "7319674d2f92072867509e59e3407202",
"assets/assets/person_reading_icon.png": "72be2b0259d717a47f5cb5e07a493286",
"assets/assets/tesouro.png": "e200abb229e802f6291d038e1ffc0c84",
"assets/assets/back_icon.png": "5a5b0fa401cf03314d182e97016f2199",
"assets/assets/fonts/WorkSans-Regular.ttf": "30be604d29fd477c201fb1d6e668eaeb",
"assets/assets/fonts/Roboto-Medium.ttf": "58aef543c97bbaf6a9896e8484456d98",
"assets/assets/fonts/Roboto-Regular.ttf": "11eabca2251325cfc5589c9c6fb57b46",
"assets/assets/fonts/WorkSans-Medium.ttf": "488b6f72b6183415e7a20aafa803a0c8",
"assets/assets/fonts/WorkSans-SemiBold.ttf": "6f8da6d25c25d58ef3ec1c8b7c0e69c3",
"assets/assets/fonts/Roboto-Bold.ttf": "e07df86cef2e721115583d61d1fb68a6",
"assets/assets/fonts/WorkSans-Bold.ttf": "1fed2d8028f8f5356cbecedb03427405",
"assets/assets/tutorial1.png": "7c27d6608d36a5fead89007fc3944669",
"assets/assets/close_icon.png": "0e3e3d943874bd857ab18b391ef6ec4b",
"assets/assets/duck_icon.png": "8848f6fdf1f2c5c3ab7075cb374848a5",
"assets/assets/camera_icon.png": "1f93db55c96960e84609fba6a0c065c6",
"assets/assets/tutorial2.png": "e5c280ea33f6da46e338685c6fb1ab39",
"assets/assets/select_action_effect.png": "fee34e7499f719e64940d24b3125dd42",
"assets/assets/design_course/userImage.png": "f0f0f1fe2d13630b6eab4fc122df0879",
"assets/assets/design_course/design_course.png": "056917dfdf670a55361f3fde8efbfd8e",
"assets/assets/design_course/interFace1.png": "cd8a44e8d0af949a031c0ea83958d623",
"assets/assets/design_course/interFace3.png": "25e4c23657b1dac674e352d274ad8b2e",
"assets/assets/design_course/interFace2.png": "c101d35e907f00f40900fca7f9c4c69e",
"assets/assets/design_course/webInterFace.png": "3ac7805ba2cca78a43bcb0658b1098cd",
"assets/assets/design_course/interFace4.png": "aeaa1e1b0de05128ab97337e9a73c25c",
"assets/assets/tutorial3.png": "7f4ce3274fa55c3bd1d86f30362442de"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');

      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }

      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data == 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message = 'downloadOffline') {
    downloadOffline();
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
