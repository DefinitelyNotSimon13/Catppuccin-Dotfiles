#!/bin/sh
"/home/simon/.local/share/JetBrains/Toolbox/apps/clion/jbr/bin/java" -cp "/home/simon/.local/share/JetBrains/Toolbox/apps/clion/plugins/vcs-git/lib/git4idea-rt.jar:/home/simon/.local/share/JetBrains/Toolbox/apps/clion/lib/externalProcess-rt.jar" git4idea.editor.GitRebaseEditorApp "$@"
