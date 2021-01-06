{ allowUnfree = true;

  retroarch = {
    enableGambatte = true;
    enableSnes9x = true;
    enableDesmume = true;
  };

  packageOverrides = super: let self = super.pkgs; in {
  vdirsyncer = super.vdirsyncer.overrideAttrs(oldAttrs: rec {
      patches = oldAttrs.patches ++
        [(self.fetchpatch {
          url = https://github.com/pimutils/vdirsyncer/pull/788.patch;
          sha256 = "0vl942ii5iad47y63v0ngmhfp37n30nxyk4j7h64b95fk38vfwx9";
        })];
      }
    );
  };
}
