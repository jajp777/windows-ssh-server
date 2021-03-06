# Define paths.
$baseFileName = "EventLogMsgs"

# Compile message file for event log into RES file.
cd ./obj/
mc -s ../EventLogMsgs.mc
rc ./EventLogMsgs.rc

# Link RES file into resources DLL.
link /DLL /SUBSYSTEM:WINDOWS /NOENTRY /MACHINE:x86 ./EventLogMsgs.res

# Copy output DLL file to project dir.
copy ./EventLogMsgs.dll ../
