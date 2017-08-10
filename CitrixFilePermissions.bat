@echo off
REG ADD "HKLM\SOFTWARE\Wow6432Node\Citrix\ICA Client\Client Selective Trust\oidInternetRegionIcaAuthorizationDecision\FileSecurityPermission" /f /ve /t REG_SZ /d 2
REG ADD "HKLM\SOFTWARE\Wow6432Node\Citrix\ICA Client\Client Selective Trust\oidInternetRegionIcaAuthorizationDecision\FileSecurityPermission" /f /v stereotype /t REG_SZ /d DbScalar
REG ADD "HKLM\SOFTWARE\Wow6432Node\Citrix\ICA Client\Client Selective Trust\oidIntranetRegionIcaAuthorizationDecision\FileSecurityPermission" /f /ve /t REG_SZ /d 2
REG ADD "HKLM\SOFTWARE\Wow6432Node\Citrix\ICA Client\Client Selective Trust\oidIntranetRegionIcaAuthorizationDecision\FileSecurityPermission" /f /v stereotype /t REG_SZ /d DbScalar
REG ADD "HKLM\SOFTWARE\Wow6432Node\Citrix\ICA Client\Client Selective Trust\oidRestrictedSitesRegionIcaAuthorizationDecision\FileSecurityPermission" /f /ve /t REG_SZ /d 2
REG ADD "HKLM\SOFTWARE\Wow6432Node\Citrix\ICA Client\Client Selective Trust\oidRestrictedSitesRegionIcaAuthorizationDecision\FileSecurityPermission" /f /v stereotype /t REG_SZ /d DbScalar
REG ADD "HKLM\SOFTWARE\Wow6432Node\Citrix\ICA Client\Client Selective Trust\oidTrustedSitesRegionIcaAuthorizationDecision\FileSecurityPermission" /f /ve /t REG_SZ /d 2
REG ADD "HKLM\SOFTWARE\Wow6432Node\Citrix\ICA Client\Client Selective Trust\oidTrustedSitesRegionIcaAuthorizationDecision\FileSecurityPermission" /f /v stereotype /t REG_SZ /d DbScalar