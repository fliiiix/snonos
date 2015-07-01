Snonos
======


Turn your sonos music volume down when your snome phone rings.



##How to install
1. install ruby
2. install gems `bundle install --binstubs --path vendor`
3. setup snom 
    * Incoming call to url/volume_incoming
    * Outgoing call to url/volume_incoming
    * On Disconnected to url/volume_disconnected
