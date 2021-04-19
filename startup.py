import subprocess
import os

# boot up and application and reboot it if the screensaver kicks in.
def start_process():
    process = subprocess.Popen(os.environ['START_PROCESS'], shell=False)
    return process

saver = subprocess.Popen(('xscreensaver-command', '-watch'), shell=False, stdout=subprocess.PIPE)

process = start_process()

# poll saver.stdout and check for RUN.
while True:
  output = saver.stdout.readline()
  if saver.poll() is not None:
    break
  if output and "RUN" in output.decode():
    print("screensaver activated")
    process.terminate()
    process = start_process()
