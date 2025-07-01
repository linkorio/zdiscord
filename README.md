<h1> ZDiscord </h1>

<h2>Why?</h2>
<p> EN: This project was created for communication with friends via Discord solely for entertainment purposes, due to the lack of adequate alternatives. All this project does is download the zapret-discord-youtube project and create a shortcut to run it simultaneously with the Discord already in the system. Use at your own risk. </p>
<p> RU: Данный проект создан для общения с друзьями через дискорд исключительно в развлекательных целях, из-за отсутствия адекватных альтернатив. Всё что делает данный проект, это скачивает проект zapret-discord-youtube и создает ярлык для одновременного запуска этого проекта с уже имеющимся в системе Discord-ом. Используйте на свой страх и риск. </p>

<h2>Dependencies</h2>
<p> EN: This project use <a href='https://github.com/Flowseal/zapret-discord-youtube'>zapret-discord-youtube</a> and assumes that you have git on your computer and Discord is already installed in the default folder. </p>
<p> RU: Этот проект использует <a href='https://github.com/Flowseal/zapret-discord-youtube'>zapret-discord-youtube</a> а так же подразумевает что на вашем пк уже есть git и Discord установленный в папку по умолчанию. </p>


<h2> Fast start </h2>

<h4>EN:</h4>
<p> Download zdiscord on your PC next command:</p>
<pre>
git clone git@github.com:linkorio/zdiscord.git
</pre>
<p> or you can download ZIP and unzip project, but you still need git on your system, because this project clones "zapret-dicord-youtube" from another repository using git </p>

<code>Run the create_link.cmd</code>

<code>Run shortcut on your desktop</code>

<h4>RU:</h4>
<p>Загрузите zdiscord на ваш PC с помощью следующей команды:</p>
<pre>
git clone git@github.com:linkorio/zdiscord.git
</pre>
<p> или вы можете скачать zip и разархивировать его, но вам все равно понадобится git, потому что этот проект использует его для скачивания "zapret-dicord-youtube" из другого репозитория </p>

<code>Запустите create_link.cmd</code>

<code>Запустите новый ярлык появившийся на вашем рабочем столе</code>

<h2> Shortcut </h2>
<h4>EN:</h4>
<p> To create a shortcut on your desktop, run the create_link.cmd file</p>
<p>!!! If you want zapret to close when Discord stops, you need to add "run as administrator" to the shortcut. </p>
<p>* If you close main terminal, zapret will not be closed.</p>
<p>* And if you close zapret, discord will not be closed.</p>
<p>* It is assumed that you will close discord via the system tray.</p>
<p> You can copy and remove original shortcut </p>

<h4>RU:</h4>
<p> Для создания ярлыка на рабочем столе запустите create_link.cmd</p>
<p>!!! Если вы хотите чтобы zapret закрывался когда закрывается Discord, вам необходимо добавить ярлыку "запуск от администратора". </p>
<p>* Если вы закроете основной терминал, zapret не будет остановлен.</p>
<p>* И если вы закроете zapret, discord не будет остановлен.</p>
<p>* Подразумевается что вы будете закрывать discord через системный трей.</p>
<p> Вы можете копировать и после удалить оригинальный ярлык, при необходимости убрать его с рабочего стола </p>

<h2> Files description </h2>
<h4>EN:</h4>
<p> create_link.cmd - cmd file to run link.ps1 without console  </p>
<p> link.ps1 - powershell script to create shortcut from run_both.ps1 </p>
<p> run_both.ps1 - main powershell script to download to home directory and run zapret-discord-youtube and run discord </p>
<p> README - documents and description for project</p>

<h4>RU:</h4>
<p> create_link.cmd - cmd файл для запуска link.ps1 без консоли  </p>
<p> link.ps1 - powershell script для создания ярлыка запускающего run_both.ps1 </p>
<p> run_both.ps1 - Основной powershell скрипт для установки zapret-discord-youtube в домашнюю директорию и дальнейшего запуска а так же для запуска discord </p>
<p> README - Документация и описание проекта</p>

<h2> Support systems </h2>
<p>Windows</p>

<h2> TODO List </h2>
<h4>EN:</h4>
<p> 1. Swap git clone on download zip  </p>
<p> 2. Swap git pull on update-manager for zapret </p>
<p> 3. Add planner for autostart with windows </p>
