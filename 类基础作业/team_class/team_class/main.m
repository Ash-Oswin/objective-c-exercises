//
//  main.m
//  team_class
//
//  Created by 谢政 on 2020/4/25.
//  Copyright © 2020 maimemo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Team : NSObject {
    NSString *_team_name;
    int _num_of_players;
    int _num_of_cocah;
    int _win_field;
    int _lose_field;
}
- (id) initWithTeamName : (NSString *)team_name
         num_of_players : (int)num_of_players
           num_of_cocah : (int)num_of_cacoh
              win_field : (int)win_field
             lose_field : (int)lose_field;

- (void) show;
@end

@implementation Team
- (id) initWithTeamName : (NSString *)team_name
         num_of_players : (int)num_of_players
           num_of_cocah : (int)num_of_cocah
              win_field : (int)win_field
             lose_field : (int)lose_field {
    self = [super init];
    _team_name = team_name;
    _num_of_players = num_of_players;
    _num_of_cocah = num_of_cocah;
    _win_field = win_field;
    _lose_field = lose_field;
    
    return self;
}

- (void) show {
    NSLog(@"Teamname is %@,\
          number of players is %d, \
          number_of_cocah is %d, \
          win field is %d, \
          lose field is %d",
          _team_name,
          _num_of_players,
          _num_of_cocah,
          _win_field,
          _lose_field);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Team *t = [[Team alloc] initWithTeamName : @"Ash"
                                 num_of_players : 12
                                   num_of_cocah : 2
                                      win_field : 10
                                     lose_field : 5];
        [t show];
    }
    return 0;
}
