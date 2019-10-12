{ pkgs, lib, ... }:
{
  imports = [
    ../.
    ../../../common/cpu/amd
  ];

  boot.kernelPackages = lib.mkDefault pkgs.linuxPackages_5_6;
  boot.kernelParams = [ "acpi_backlight=vendor" ];
}
