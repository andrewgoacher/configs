function clone-uinsure {
    param(
        $url
    )

    $url = $url -ireplace "github.com", "github.uinsure"
    git clone $url
}