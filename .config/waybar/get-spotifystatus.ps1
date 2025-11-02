try
{
	$playerStatus=$(playerctl -p spotify status)
	$artist = $(playerctl metadata -p spotify --format "{{ artist }}").Trim()
	$title = $(playerctl metadata -p spotify --format "{{ title }}").Trim()
	$artUrl = $(playerctl metadata -p spotify --format "{{ mpris:artUrl }}")
	if($playerStatus.Contains("Playing")) {
		return "{`"text`":`" $($artist) - $($title)`"}"
	}
	else {
		return "{`"text`":`" $($artist) - $($title)`"}"
	}
}
catch
{
    return "{`"text`":`" Spotify not playing...`"}"
}
