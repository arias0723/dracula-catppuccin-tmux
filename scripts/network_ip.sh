#!/usr/bin/env bash
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

HOSTS="google.com github.com example.com"

get_ip()
{
  # Check OS
  case $(uname -s) in
    Linux)
      echo $(ip route get 8.8.8.8 | awk '{print $7}')
      ;;
    *)
      ;;
  esac

}

main()
{
  network="Offline"
  network="$(get_ip)"

  echo " $network"
}

#run main driver function
main
