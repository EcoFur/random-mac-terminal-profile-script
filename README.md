<img width="320" height="210" alt="Screenshot 2026-08-23 at 11 40 21 AM Medium" src="https://github.com/user-attachments/assets/e4b8db91-e056-4256-a8a9-24cb267f5617" />  

To get a color-identifiable **MacOS Terminal** windows, I tried to use script to set colors randomly.   

First, you should name your **Terminal** profiles from 0 to n. (Terminal-->Settings...-->Profiles)  
Then add this code to ``~/.zshrc``
```zsh
if [[ -n $TERM_PROGRAM && $TERM_PROGRAM == "Apple_Terminal" ]]; then
    PROFILE=$(( RANDOM % YOUR_N+1 ))
    osascript -e "tell application \"Terminal\" to set current settings of selected tab of window 1 to settings set \"$PROFILE\"" 2>/dev/null
fi
```
change ``YOUR_N+1`` inside to ``n+1``


为了给 MacOS 的终端窗口设置可区分的颜色，我尝试用脚本随机设置颜色。  

首先，你需要将你的**终端**配置文件（Profiles）从 0 到 n 命名。（终端-->设置-->配置文件）  
然后在 `~/.zshrc` 中添加以下代码：
```zsh
if [[ -n $TERM_PROGRAM && $TERM_PROGRAM == "Apple_Terminal" ]]; then
    PROFILE=$(( RANDOM % YOUR_N+1 ))
    osascript -e "tell application \"Terminal\" to set current settings of selected tab of window 1 to settings set \"$PROFILE\"" 2>/dev/null
fi
```
修改文件中的 ``YOUR_N+1`` 为 ``n+1``
