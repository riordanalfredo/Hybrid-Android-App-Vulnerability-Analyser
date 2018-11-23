 //initial
	function initAds() {
      if (admob) {
        var adPublisherIds = {
          ios : {
            banner : "ca-app-pub-7538563445332968/2786958330",
            interstitial : "ca-app-pub-7538563445332968/4534389938"
          },
          android : {
            banner : "ca-app-pub-7538563445332968/2786958330",
            interstitial : "ca-app-pub-7538563445332968/4534389938"
          }
        };
    	  
        var admobid = (/(android)/i.test(navigator.userAgent)) ? adPublisherIds.android : adPublisherIds.ios;
            
        admob.setOptions({
          publisherId:      admobid.banner,
          interstitialAdId: admobid.interstitial,
          tappxIdiOS:       "/XXXXXXXXX/Pub-XXXX-iOS-IIII",
          tappxIdAndroid:   "/120940746/Pub-20832-Android-3415",
          tappxShare:       0.5,
		  isTesting:        false,
        });

        registerAdEvents();
        
      } else {
        alert('AdMobAds plugin not ready');
      }
    }
    
    function onAdLoaded(e) {
      if (e.adType === admob.AD_TYPE.INTERSTITIAL) {
        	showNextInterstitial = setTimeout(function() {
          	    admob.requestInterstitialAd();
        	}, 15 * 60 * 1000); // 15 minutes
      }
    }

    
    // optional, in case respond to events
    function registerAdEvents() {
      document.addEventListener(admob.events.onAdLoaded, onAdLoaded);
      document.addEventListener(admob.events.onAdFailedToLoad, function (e) {});
      document.addEventListener(admob.events.onAdOpened, function (e) {});
      document.addEventListener(admob.events.onAdClosed, function (e) {});
      document.addEventListener(admob.events.onAdLeftApplication, function (e) {});
      document.addEventListener(admob.events.onInAppPurchaseRequested, function (e) {});
    }
    
   
     
        
    function onDeviceReady() {
      document.removeEventListener('deviceready', onDeviceReady, false);
      initAds(); 
        
       // display a banner at startup
      admob.createBannerView();
	  
      // request an interstitial
	  setTimeout(function() {
          	    admob.requestInterstitialAd();
        	}, 1000 * 15); // 15 seconds delay
	  	
    }

		
    
    document.addEventListener("deviceready", onDeviceReady, false);	
