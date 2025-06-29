<h1> ZDiscord </h1>

<p> This project use <a href='https://github.com/Flowseal/zapret-discord-youtube'>zapret-discord-youtube</a> and assumes that you have git on your computer and Discord is already installed in the default folder. </p>

<h2> Fast start </h2>
<p> Download zdiscord on your PC next command:</p>
<pre>
git clone git@github.com:linkorio/zdiscord.git
</pre>
<p> or you can download ZIP and unzip project, but you still need git on your system, because this project clones "zapret-dicord-youtube" from another repository using git </p>

<code>Run the create_link.cmd</code>

<code>Run shortcut on your desktop</code>

<h2> Shortcut </h2>
<p> To create a shortcut on your desktop, run the create_link.cmd file</p>
<p>!!! If you want zapret to close when Discord stops, you need to add "run as administrator" to the shortcut. </p>
<p>* If you close main terminal, zapret will not be closed.</p>
<p>* And if you close zapret, discord will not be closed.</p>
<p>* It is assumed that you will close discord via the system tray.</p>
<p> You can copy and remove original shortcut </p>

<h2> Files description </h2>
<p> create_link.cmd - cmd file to run link.ps1 without console  </p>
<p> link.ps1 - powershell script to create shortcut from run_both.ps1 </p>
<p> run_both.ps1 - main powershell script to download to home directory and run zapret-discord-youtube and run discord </p>
<p> README - documents and description for project</p>