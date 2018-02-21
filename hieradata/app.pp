node 'node1' {
    
    include base
    
    class {'tomcat':
        xms => '54m',
        xmx => '127m',
    }
    
    tomcat::deploy { "sysfoo" :
        deploy_url          => 'https://2-120669565-gh.circle-artifacts.com/0/tmp/circle-artifacts.8yv2Y1B/sysfoo.war',
        checksum            => 'md5',
        checksum_value      => '40bdb4a6a0abc29c60354b8c5a70622c',
    }
}

node default {
    
    notify{'checkpoint_1':

        message => "
        
            **** DEFAULT BLOCK ****
            
            Applying Default BLOCK
            Looks like there is no definition for this node.....
            
        "
    }

}


node 'node2' {
    
    include base
    
    class {'::tomcat' :
    
    }
    
    
    
    tomcat::deploy { "sysfoo" :
        deploy_url          => 'https://2-120669565-gh.circle-artifacts.com/0/tmp/circle-artifacts.8yv2Y1B/sysfoo.war',
        checksum            => 'md5',
        checksum_value      => '40bdb4a6a0abc29c60354b8c5a70622c',
    }
}
