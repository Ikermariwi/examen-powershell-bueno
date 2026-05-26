# Script para la creación masiva de usuarios en Active Directory
# Autor: Iker Marijuan - Año: 2026

Import-Module ActiveDirectory

# Configuración de la contraseña requerida por el enunciado
$Password = ConvertTo-SecureString "Pssw0rd" -AsPlainText -Force

Write-Host "Iniciando la creación de usuarios..." -ForegroundColor Green

# 1. Crear offi1user1
try {
    New-ADUser -Name "offi1user1" -SamAccountName "offi1user1" -UserPrincipalName "offi1user1@miMarijuan.com" -AccountPassword $Password -Enabled $true -ChangePasswordAtLogon $false
    Write-Host "Usuario offi1user1 creado con éxito." -ForegroundColor Cyan
} catch {
    Write-Host "Error al crear offi1user1: $_" -ForegroundColor Red
}

# 2. Crear offi2user1 hasta offi2user50
for ($i = 1; $i -le 50; $i++) {
    $username = "offi2user$i"
    try {
        New-ADUser -Name $username -SamAccountName $username -UserPrincipalName "$username@miMarijuan.com" -AccountPassword $Password -Enabled $true -ChangePasswordAtLogon $false
    } catch {
        Write-Host "Error al crear $username: $_" -ForegroundColor Red
    }
}
Write-Host "Bloque offi2user (1-50) procesado." -ForegroundColor Cyan

# 3. Crear offi3user1 hasta offi3user30
for ($j = 1; $j -le 30; $j++) {
    $username = "offi3user$j"
    try {
        New-ADUser -Name $username -SamAccountName $username -UserPrincipalName "$username@miMarijuan.com" -AccountPassword $Password -Enabled $true -ChangePasswordAtLogon $false
    } catch {
        Write-Host "Error al crear $username: $_" -ForegroundColor Red
    }
}
Write-Host "Bloque offi3user (1-30) procesado." -ForegroundColor Cyan
Write-Host "Proceso de creación de usuarios finalizado." -ForegroundColor Green