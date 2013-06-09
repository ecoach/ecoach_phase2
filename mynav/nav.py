from django.core.urlresolvers import reverse
#from mycoach import urls

def main_nav(user, selected):
    
    all_main = [
            #'text'         
            #   'styling_class(es)',    
            #       'links_to'
            #           'permission_required'
            #               '[seen_from]'
            #                   'selected'
            ['Coaches', 
                '',  
                    reverse('course_select'),
                        'any',
                            ['coaches', 'student_view', 'staff_view'],
                                'coaches',


            ],
            ['Student View', 
                '',  
                    reverse('message_view', kwargs={'msg_id' : ''}),
                        'staff',
                            ['student_view', 'staff_view'],
                                'student_view',
            ],
            ['Staff View', 
                '',  
                    reverse('course_select'),
                        'staff',
                            ['student_view', 'staff_view'],
                                'staff_view',

            ],
            [''.join(['Logout: ', user.username]),      
                '', 
                    reverse('mylogout'),
                        'any',
                            ['coaches', 'student_view', 'staff_view'],
                                'never',


            ]
        ]

    main_nav = []
    for nn in all_main:
        # style the selected option
        if nn[5] == selected:
            nn[1] = 'current'
        # sceen from this page type?
        if selected in nn[4]:
            # permission?
            if nn[3] == 'any':
                main_nav.append(nn)
            elif nn[3] == 'staff' and user.is_staff:
                main_nav.append(nn)

    return main_nav

