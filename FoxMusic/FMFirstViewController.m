//
//  FMFirstViewController.m
//  FoxMusic
//
//  Created by Lasse Lauwerys on 26/06/24.
//  Copyright (c) 2024 Lasse Lauwerys. All rights reserved.
//

#import "FMFirstViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>

//#import <ShakaPlayerEmbedded/ShakaPlayerEmbedded.h>

@interface FMFirstViewController ()

@end

@implementation FMFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"http://www.businessfactors.de/bfcms/images/stories/videos/defaultscreenvideos.mp4"];
    MPMoviePlayerController *player =[[MPMoviePlayerController alloc] initWithContentURL: url];
    [[player view] setFrame: [self.view bounds]];  // frame must match parent view
    [self.view addSubview: [player view]];
    [player play];
	// Do any additional setup after loading the view, typically from a nib.
    
//    MPM
    
//    ShakaPlayer *shakaplayer;
//    ShakaPlayer.
//    
//    MPMusicPlayerController *musicPlayer = [MPMusicPlayerController applicationMusicPlayer];
//    
//    MPMediaQuery *albumsQuery = [MPMediaQuery albumsQuery];
//    
//    NSLog(@"playing: %i", [[albumsQuery items] count]);
//    
//    MPMediaItem *item = [[albumsQuery items] lastObject];
//    
//    NSLog(@"player: %@", [item valueForProperty:MPMediaItemPropertyTitle]);
//    
//    MPMediaQuery *mediaQuery = [MPMediaQuery songsQuery];
////    MPMediaItem *mediaItem = [[mediaQuery items] objectAtIndex:0];
//    
//    NSLog(@"song: %i", [mediaQuery items].count);
////    NSLog(@"song title: %@", [mediaItem valueForProperty:MPMediaItemPropertyTitle]);
//    
//    [musicPlayer setQueueWithQuery:albumsQuery];
////    [musicplayer set]
////    [musicPlayer setNowPlayingItem:mediaItem];
//    
//    //[musicPlayer play];
//    
//    [musicPlayer setVolume:1];
//    
//    NSString *title = [musicPlayer.nowPlayingItem valueForProperty:MPMediaItemPropertyTitle];
//    
//    NSLog(@"playing: %@", title);
//    
//    MPMediaLibrary *library = [MPMediaLibrary defaultMediaLibrary];
//    
//    NSURL *testFile = [NSURL URLWithString:@"/System/Library/Audio/UISounds"];
//    
//    NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:[testFile path] error:nil];
//    
//    NSString *fullPath = [testFile.path stringByAppendingPathComponent:files.lastObject];
//    NSLog(@"amount: %i, object: %@", files.count, fullPath);
//    
//    NSError *error;
//    
//    AVAudioPlayer *audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL URLWithString:fullPath] error:&error];
//    [audioPlayer prepareToPlay];
//    [audioPlayer play];
//    
//    int duration = [audioPlayer duration];
//    
//    NSLog(@"dures: %i, %@", duration, error.localizedDescription);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)installCertificates:(id)sender
//{
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"DigiCert_Global_Root_G2" ofType:@"pem"];
//    NSURL *url = [NSURL fileURLWithPath:path];
//    
//    self.documentInteractionController = [UIDocumentInteractionController interactionControllerWithURL:url];
//    
//    self.documentInteractionController.delegate = self;
//    
//    [self.documentInteractionController presentOptionsMenuFromRect:self.view.bounds inView:self.view animated:YES];
//    
//    
//}

@end
