hiera_include('classes')

node 'node4' {
   
   include role::lb
   
}
