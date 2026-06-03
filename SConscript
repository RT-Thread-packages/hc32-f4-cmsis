import rtconfig
from building import *

# get current directory
cwd = GetCurrentDir()
path = [cwd + '/Include']
src = []

# The set of source files associated with this SConscript file.

if GetDepend(['SOC_HC32F4A0SI']):

    src += Split('''
    Device/HDSC/hc32f4a0/Source/system_hc32f4a0.c
    ''')

    if rtconfig.PLATFORM in ['gcc']:
        src += ['Device/HDSC/hc32f4a0/Source/GCC/startup_hc32f4a0.S']
    elif rtconfig.PLATFORM in ['armcc', 'armclang']:
        src += ['Device/HDSC/hc32f4a0/Source/ARM/startup_hc32f4a0.s']
    elif rtconfig.PLATFORM in ['iccarm']:
        src += ['Device/HDSC/hc32f4a0/Source/IAR/startup_hc32f4a0.s']

    path += [cwd + '/Device/HDSC/hc32f4a0/Include']

elif GetDepend(['SOC_HC32F448MC']):

    src += Split('''
    Device/HDSC/hc32f448/Source/system_hc32f448.c
    ''')

    if rtconfig.PLATFORM in ['gcc']:
        src += ['Device/HDSC/hc32f448/Source/GCC/startup_hc32f448.S']
    elif rtconfig.PLATFORM in ['armcc', 'armclang']:
        src += ['Device/HDSC/hc32f448/Source/ARM/startup_hc32f448.s']
    elif rtconfig.PLATFORM in ['iccarm']:
        src += ['Device/HDSC/hc32f448/Source/IAR/startup_hc32f448.s']

    path += [cwd + '/Device/HDSC/hc32f448/Include']

elif GetDepend(['SOC_HC32F4A8SI']):

    src += Split('''
    Device/HDSC/hc32f4a8/Source/system_hc32f4a8.c
    ''')

    if rtconfig.PLATFORM in ['gcc']:
        src += ['Device/HDSC/hc32f4a8/Source/GCC/startup_hc32f4a8.S']
    elif rtconfig.PLATFORM in ['armcc', 'armclang']:
        src += ['Device/HDSC/hc32f4a8/Source/ARM/startup_hc32f4a8.s']
    elif rtconfig.PLATFORM in ['iccarm']:
        src += ['Device/HDSC/hc32f4a8/Source/IAR/startup_hc32f4a8.s']

    path += [cwd + '/Device/HDSC/hc32f4a8/Include']

elif GetDepend(['SOC_HC32F460PE']):

    src += Split('''
    Device/HDSC/hc32f460/Source/system_hc32f460.c
    ''')

    if rtconfig.PLATFORM in ['gcc']:
        src += ['Device/HDSC/hc32f460/Source/GCC/startup_hc32f460.S']
    elif rtconfig.PLATFORM in ['armcc', 'armclang']:
        src += ['Device/HDSC/hc32f460/Source/ARM/startup_hc32f460.s']
    elif rtconfig.PLATFORM in ['iccarm']:
        src += ['Device/HDSC/hc32f460/Source/IAR/startup_hc32f460.s']

    path += [cwd + '/Device/HDSC/hc32f460/Include']

elif GetDepend(['SOC_HC32F472PE']):

    src += Split('''
    Device/HDSC/hc32f472/Source/system_hc32f472.c
    ''')

    if rtconfig.PLATFORM in ['gcc']:
        src += ['Device/HDSC/hc32f472/Source/GCC/startup_hc32f472.S']
    elif rtconfig.PLATFORM in ['armcc', 'armclang']:
        src += ['Device/HDSC/hc32f472/Source/ARM/startup_hc32f472.s']
    elif rtconfig.PLATFORM in ['iccarm']:
        src += ['Device/HDSC/hc32f472/Source/IAR/startup_hc32f472.s']

    path += [cwd + '/Device/HDSC/hc32f472/Include']
elif GetDepend(['SOC_HC32F467RG']):

    src += Split('''
    Device/HDSC/hc32f467/Source/system_hc32f467.c
    ''')

    if rtconfig.PLATFORM in ['gcc']:
        src += ['Device/HDSC/hc32f467/Source/GCC/startup_hc32f467.S']
    elif rtconfig.PLATFORM in ['armcc', 'armclang']:
        src += ['Device/HDSC/hc32f467/Source/ARM/startup_hc32f467.s']
    elif rtconfig.PLATFORM in ['iccarm']:
        src += ['Device/HDSC/hc32f467/Source/IAR/startup_hc32f467.s']

    path += [cwd + '/Device/HDSC/hc32f467/Include']

CPPDEFINES = ['USE_DDL_DRIVER']

group = DefineGroup('Libraries', src, depend = [''], CPPPATH = path, CPPDEFINES = CPPDEFINES)

Return('group')
