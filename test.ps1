try
{
	$playerStatus=$(playerctl -p spotify status)
	$artist = $(playerctl metadata -p spotify --format "{{ artist }}").Trim()
	$fixedArtist = $artist.Replace("&", "&amp;")
	$title = $(playerctl metadata -p spotify --format "{{ title }}").Trim()
	$artUrl = $(playerctl metadata -p spotify --format "{{ mpris:artUrl }}")
	if($playerStatus.Contains("Playing")) {
		return "{`"text`":`" $($fixedArtist) - $($title)`"}"
	}
	else {
		return "{`"text`":`" $($fixedArtist) - $($title)`"}"
	}
}
catch
{
    return "{`"text`":`" Spotify not playing...`"}"
}
