hiera_include('classes')

node 'node1' {   

    include role::web
    
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

    include role::web

}
