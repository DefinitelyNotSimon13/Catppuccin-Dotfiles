**[2024-01-24 23:49:41,813]**

**User:**

Diff:
Index: vcpkg.json
===================================================================
--- a/vcpkg.json	(revision 7ad0d902482220969fe834524ebbe05be0289146)
+++ b/vcpkg.json	(date 1706136131228)
@@ -9,13 +9,13 @@
     "name" : "mongo-c-driver",
     "version>=" : "1.25.4#1"
   }, {
-    "name" : "mongo-cxx-driver",
-    "version>=" : "3.9.0"
-  }, {
     "name" : "vcpkg-cmake-config",
     "version>=" : "2022-02-06#1"
   }, {
     "name" : "vcpkg-cmake",
     "version>=" : "2023-05-04"
+  }, {
+    "name" : "mongo-cxx-driver",
+    "version>=" : "3.9.0"
   } ]
 }
\ No newline at end of file

Commit message:
Update library paths and directives in CMakeLists.txt

The update modifies the CMakeLists.txt to utilize full path for the loadEnv.cmake file, increasing accuracy and avoiding potential errors. Static MongoDB libraries have been substituted for their shared counterparts to improve stability and prevent dependencies issues.

**[2024-01-24 23:49:57,724]**

**User:**

Diff:
Index: .idea/workspace.xml
===================================================================
--- a/.idea/workspace.xml	(revision 7ad0d902482220969fe834524ebbe05be0289146)
+++ b/.idea/workspace.xml	(date 1706136525696)
@@ -21,8 +21,9 @@
     <configurations />
   </component>
   <component name="ChangeListManager">
-    <list default="true" id="428c190b-fbb6-44a9-86d2-37409b6be4d3" name="Changes" comment="Create new .idea/workspace.xml file &#10;&#10;Added a new workspace.xml file that includes several configuration settings, components, and processes. This addition refines the overall system structure by defining specific project workspace settings and CMake build configurations.">
+    <list default="true" id="428c190b-fbb6-44a9-86d2-37409b6be4d3" name="Changes" comment="Update library paths and directives in CMakeLists.txt&#10;&#10;The update modifies the CMakeLists.txt to utilize full path for the loadEnv.cmake file, increasing accuracy and avoiding potential errors. Static MongoDB libraries have been substituted for their shared counterparts to improve stability and prevent dependencies issues.">
       <change beforePath="$PROJECT_DIR$/.idea/workspace.xml" beforeDir="false" afterPath="$PROJECT_DIR$/.idea/workspace.xml" afterDir="false" />
+      <change beforePath="$PROJECT_DIR$/vcpkg.json" beforeDir="false" afterPath="$PROJECT_DIR$/vcpkg.json" afterDir="false" />
     </list>
     <option name="SHOW_DIALOG" value="false" />
     <option name="HIGHLIGHT_CONFLICTS" value="true" />
@@ -32,10 +33,20 @@
   <component name="ClangdSettings">
     <option name="formatViaClangd" value="false" />
   </component>
-  <component name="ExecutionTargetManager" SELECTED_TARGET="CMakeBuildProfile:Debug-Visual Studio" />
+  <component name="ExecutionTargetManager" SELECTED_TARGET="CMakeBuildProfile:Debug" />
+  <component name="FileTemplateManagerImpl">
+    <option name="RECENT_TEMPLATES">
+      <list>
+        <option value="HTTP Request" />
+      </list>
+    </option>
+  </component>
   <component name="Git.Settings">
     <option name="RECENT_GIT_ROOT_PATH" value="$PROJECT_DIR$" />
     <option name="ROOT_SYNC" value="DONT_SYNC" />
+  </component>
+  <component name="GitToolBoxStore">
+    <option name="projectConfigVersion" value="5" />
   </component>
   <component name="MarkdownSettingsMigration">
     <option name="stateVersion" value="1" />
@@ -73,13 +84,13 @@
     &quot;com.jfrog.conanplugin.hasbeensetup&quot;: &quot;true&quot;,
     &quot;git-widget-placeholder&quot;: &quot;main&quot;,
     &quot;ignore.virus.scanning.warn.message&quot;: &quot;true&quot;,
-    &quot;last_opened_file_path&quot;: &quot;C:/Users/Clean/Documents/Projekte/ERGOS/vcpkg&quot;,
+    &quot;last_opened_file_path&quot;: &quot;/home/simon/coding/Ergos/vcpkg&quot;,
     &quot;node.js.detected.package.eslint&quot;: &quot;true&quot;,
     &quot;node.js.detected.package.tslint&quot;: &quot;true&quot;,
     &quot;node.js.selected.package.eslint&quot;: &quot;(autodetect)&quot;,
     &quot;node.js.selected.package.tslint&quot;: &quot;(autodetect)&quot;,
     &quot;nodejs_package_manager_path&quot;: &quot;npm&quot;,
-    &quot;settings.editor.selected.configurable&quot;: &quot;CMakeSettings&quot;,
+    &quot;settings.editor.selected.configurable&quot;: &quot;preferences.pluginManager&quot;,
     &quot;spentTimePerTaskStorage.store&quot;: &quot;{}&quot;,
     &quot;timeTracker.activityTracker&quot;: &quot;null&quot;,
     &quot;timeTracker.comment&quot;: &quot;Automatic?&quot;,
@@ -112,22 +123,22 @@
     </key>
   </component>
   <component name="RunManager" selected="CMake Application.Ergos">
-    <configuration name="Ergos" type="CMakeRunConfiguration" factoryName="Application" REDIRECT_INPUT="false" ELEVATE="false" USE_EXTERNAL_CONSOLE="false" EMULATE_TERMINAL="false" PASS_PARENT_ENVS_2="true" PROJECT_NAME="Ergos" TARGET_NAME="Ergos" CONFIG_NAME="Debug-Visual Studio" RUN_TARGET_PROJECT_NAME="Ergos" RUN_TARGET_NAME="Ergos">
+    <configuration name="Ergos" type="CMakeRunConfiguration" factoryName="Application" REDIRECT_INPUT="false" ELEVATE="false" USE_EXTERNAL_CONSOLE="false" EMULATE_TERMINAL="false" PASS_PARENT_ENVS_2="true" PROJECT_NAME="Ergos" TARGET_NAME="Ergos" CONFIG_NAME="Debug" RUN_TARGET_PROJECT_NAME="Ergos" RUN_TARGET_NAME="Ergos">
       <method v="2">
         <option name="com.jetbrains.cidr.execution.CidrBuildBeforeRunTaskProvider$BuildBeforeRunTask" enabled="true" />
       </method>
     </configuration>
-    <configuration name="MyDateTimeLib" type="CMakeRunConfiguration" factoryName="Application" REDIRECT_INPUT="false" ELEVATE="false" USE_EXTERNAL_CONSOLE="false" EMULATE_TERMINAL="false" PASS_PARENT_ENVS_2="true" PROJECT_NAME="Ergos" TARGET_NAME="MyDateTimeLib" CONFIG_NAME="Debug-Visual Studio">
+    <configuration name="MyDateTimeLib" type="CMakeRunConfiguration" factoryName="Application" REDIRECT_INPUT="false" ELEVATE="false" USE_EXTERNAL_CONSOLE="false" EMULATE_TERMINAL="false" PASS_PARENT_ENVS_2="true" PROJECT_NAME="Ergos" TARGET_NAME="MyDateTimeLib" CONFIG_NAME="Debug">
       <method v="2">
         <option name="com.jetbrains.cidr.execution.CidrBuildBeforeRunTaskProvider$BuildBeforeRunTask" enabled="true" />
       </method>
     </configuration>
-    <configuration name="MyLogLib" type="CMakeRunConfiguration" factoryName="Application" REDIRECT_INPUT="false" ELEVATE="false" USE_EXTERNAL_CONSOLE="false" EMULATE_TERMINAL="false" PASS_PARENT_ENVS_2="true" PROJECT_NAME="Ergos" TARGET_NAME="MyLogLib" CONFIG_NAME="Debug-Visual Studio">
+    <configuration name="MyLogLib" type="CMakeRunConfiguration" factoryName="Application" REDIRECT_INPUT="false" ELEVATE="false" USE_EXTERNAL_CONSOLE="false" EMULATE_TERMINAL="false" PASS_PARENT_ENVS_2="true" PROJECT_NAME="Ergos" TARGET_NAME="MyLogLib" CONFIG_NAME="Debug">
       <method v="2">
         <option name="com.jetbrains.cidr.execution.CidrBuildBeforeRunTaskProvider$BuildBeforeRunTask" enabled="true" />
       </method>
     </configuration>
-    <configuration name="MyUtilLib" type="CMakeRunConfiguration" factoryName="Application" REDIRECT_INPUT="false" ELEVATE="false" USE_EXTERNAL_CONSOLE="false" EMULATE_TERMINAL="false" PASS_PARENT_ENVS_2="true" PROJECT_NAME="Ergos" TARGET_NAME="MyUtilLib" CONFIG_NAME="Debug-Visual Studio">
+    <configuration name="MyUtilLib" type="CMakeRunConfiguration" factoryName="Application" REDIRECT_INPUT="false" ELEVATE="false" USE_EXTERNAL_CONSOLE="false" EMULATE_TERMINAL="false" PASS_PARENT_ENVS_2="true" PROJECT_NAME="Ergos" TARGET_NAME="MyUtilLib" CONFIG_NAME="Debug">
       <method v="2">
         <option name="com.jetbrains.cidr.execution.CidrBuildBeforeRunTaskProvider$BuildBeforeRunTask" enabled="true" />
       </method>
@@ -157,6 +168,8 @@
       <workItem from="1705863964464" duration="1491000" />
       <workItem from="1705865484975" duration="4983000" />
       <workItem from="1705871274703" duration="3000" />
+      <workItem from="1706135176997" duration="210000" />
+      <workItem from="1706135393347" duration="1089000" />
     </task>
     <task id="LOCAL-00001" summary="Remove Sqlite3 dependencies&#10;&#10;Remove Sqlite3 dependencies to prepare for move to MongoDB.">
       <option name="closed" value="true" />
@@ -318,13 +331,40 @@
       <option name="project" value="LOCAL" />
       <updated>1705870202834</updated>
     </task>
-    <option name="localTasksCounter" value="21" />
-    <servers>
-      <YouTrack url="https://simon13.youtrack.cloud">
-        <option name="defaultSearch" value="" />
-        <username>random</username>
-      </YouTrack>
-    </servers>
+    <task id="LOCAL-00021" summary="Change submodule path in .gitmodules file &#10;&#10;The path and name for the 'vcpkg' submodule have been updated in the .gitmodules file. Now, the submodule points to the Microsoft/vcpkg repository on GitHub, which is essential for specifying project dependencies.">
+      <option name="closed" value="true" />
+      <created>1706136415048</created>
+      <option name="number" value="00021" />
+      <option name="presentableId" value="LOCAL-00021" />
+      <option name="project" value="LOCAL" />
+      <updated>1706136415048</updated>
+    </task>
+    <task id="LOCAL-00022" summary="Disable Visual Studio configurations and modify generation paths&#10;&#10;Visual Studio configurations in cmake.xml file have been disabled. The generation paths have also been adjusted to reflect a different development environment. New configurations for 'Debug', 'Release', 'RelWithDebInfo', and 'MinSizeRel' have been enabled with updated paths.">
+      <option name="closed" value="true" />
+      <created>1706136427018</created>
+      <option name="number" value="00022" />
+      <option name="presentableId" value="LOCAL-00022" />
+      <option name="project" value="LOCAL" />
+      <updated>1706136427018</updated>
+    </task>
+    <task id="LOCAL-00023" summary="Update CMakeLists file with new library paths&#10;&#10;The include directive in CMakeLists.txt has been refined to use the full path to the loadEnv.cmake file instead of just LoadEnv. The shared MongoDB libraries have been replaced with their static equivalents.">
+      <option name="closed" value="true" />
+      <created>1706136434187</created>
+      <option name="number" value="00023" />
+      <option name="presentableId" value="LOCAL-00023" />
+      <option name="project" value="LOCAL" />
+      <updated>1706136434187</updated>
+    </task>
+    <task id="LOCAL-00024" summary="Update library paths and directives in CMakeLists.txt&#10;&#10;The update modifies the CMakeLists.txt to utilize full path for the loadEnv.cmake file, increasing accuracy and avoiding potential errors. Static MongoDB libraries have been substituted for their shared counterparts to improve stability and prevent dependencies issues.">
+      <option name="closed" value="true" />
+      <created>1706136443707</created>
+      <option name="number" value="00024" />
+      <option name="presentableId" value="LOCAL-00024" />
+      <option name="project" value="LOCAL" />
+      <updated>1706136443707</updated>
+    </task>
+    <option name="localTasksCounter" value="25" />
+    <servers />
   </component>
   <component name="TypeScriptGeneratedFilesManager">
     <option name="version" value="3" />
@@ -346,8 +386,6 @@
     </option>
   </component>
   <component name="VcsManagerConfiguration">
-    <MESSAGE value="Remove Sqlite3 dependencies&#10;&#10;Remove Sqlite3 dependencies to prepare for move to MongoDB." />
-    <MESSAGE value="Add 'logs/' to .gitignore&#10;&#10;An update has been made on the .gitignore file, adding 'logs/' to it. This change will prevent Git from tracking the logs directory and its files, useful for maintaining a cleaner repository." />
     <MESSAGE value="Update project name in .idea/.name file&#10;&#10;The name of the project in the .idea/.name file has been changed from 'Uni-Aufgaben' to 'Ergos'. This represents a change in the project's focus or direction." />
     <MESSAGE value="Simplify module type in ERGOS.iml&#10;&#10;The ERGOS.iml file has been simplified to only specify the module classpath and type. This change removes unnecessary definitions such as 'NewModuleRootManager' and 'orderEntry', streamlining the project structure." />
     <MESSAGE value="Add misc.xml to .idea directory&#10;&#10;The new misc.xml file has been added to the .idea directory. This file comprises the main &quot;project&quot; component for CMakeWorkspace, streamlining the structure and hierarchy of the project itself." />
@@ -368,10 +406,15 @@
     <MESSAGE value="Remove projects.db&#10;&#10;moving to mongoDB" />
     <MESSAGE value="Update vcs.xml to include vcpkg directory&#10;&#10;Added a mapping directory for vcpkg in the VcsDirectoryMappings section of the Vcs.xml file. This change allows Git to recognize and manage the vcpkg directory as well." />
     <MESSAGE value="Create new .idea/workspace.xml file &#10;&#10;Added a new workspace.xml file that includes several configuration settings, components, and processes. This addition refines the overall system structure by defining specific project workspace settings and CMake build configurations." />
-    <option name="LAST_COMMIT_MESSAGE" value="Create new .idea/workspace.xml file &#10;&#10;Added a new workspace.xml file that includes several configuration settings, components, and processes. This addition refines the overall system structure by defining specific project workspace settings and CMake build configurations." />
+    <MESSAGE value="Add new submodule 'vcpkg' to gitmodules&#10;&#10;Added a new submodule 'vcpkg' into the .gitmodules file. This addition includes the path and url, directing to the Microsoft/vcpkg on GitHub. This is crucial in defining the dependencies that are required for building the project." />
+    <MESSAGE value="Change submodule path in .gitmodules file &#10;&#10;The path and name for the 'vcpkg' submodule have been updated in the .gitmodules file. Now, the submodule points to the Microsoft/vcpkg repository on GitHub, which is essential for specifying project dependencies." />
+    <MESSAGE value="Disable Visual Studio configurations and modify generation paths&#10;&#10;Visual Studio configurations in cmake.xml file have been disabled. The generation paths have also been adjusted to reflect a different development environment. New configurations for 'Debug', 'Release', 'RelWithDebInfo', and 'MinSizeRel' have been enabled with updated paths." />
+    <MESSAGE value="Update CMakeLists file with new library paths&#10;&#10;The include directive in CMakeLists.txt has been refined to use the full path to the loadEnv.cmake file instead of just LoadEnv. The shared MongoDB libraries have been replaced with their static equivalents." />
+    <MESSAGE value="Update library paths and directives in CMakeLists.txt&#10;&#10;The update modifies the CMakeLists.txt to utilize full path for the loadEnv.cmake file, increasing accuracy and avoiding potential errors. Static MongoDB libraries have been substituted for their shared counterparts to improve stability and prevent dependencies issues." />
+    <option name="LAST_COMMIT_MESSAGE" value="Update library paths and directives in CMakeLists.txt&#10;&#10;The update modifies the CMakeLists.txt to utilize full path for the loadEnv.cmake file, increasing accuracy and avoiding potential errors. Static MongoDB libraries have been substituted for their shared counterparts to improve stability and prevent dependencies issues." />
   </component>
-  <component name="WfRunsListSearchHistory"><![CDATA[{
-  "history": [
+  <component name="WfRunsListSearchHistory">{
+  &quot;history&quot;: [
     {
     },
     {
@@ -415,9 +458,9 @@
     {
     }
   ],
-  "lastFilter": {
+  &quot;lastFilter&quot;: {
   }
-}]]></component>
+}</component>
   <component name="XDebuggerManager">
     <breakpoint-manager>
       <breakpoints>
@@ -429,4 +472,8 @@
       </breakpoints>
     </breakpoint-manager>
   </component>
+  <component name="XSLT-Support.FileAssociations.UIState">
+    <expand />
+    <select />
+  </component>
 </project>
\ No newline at end of file

Commit message:
Reorder libraries in vcpkg.json

This reorganization moves the 'mongo-cxx-driver' library lower in the list within vcpkg.json file. This change does not alter any versions or dependencies but changes the order in which libraries are appeared to enhance the list's clarity.

**[2024-01-24 23:51:19,181]**

**User:**

Diff:
Index: .idea/workspace.xml
===================================================================
--- a/.idea/workspace.xml	(revision 84587edfea09e4dd1d2767122a45c11ff8351e18)
+++ b/.idea/workspace.xml	(date 1706136670149)
@@ -21,10 +21,7 @@
     <configurations />
   </component>
   <component name="ChangeListManager">
-    <list default="true" id="428c190b-fbb6-44a9-86d2-37409b6be4d3" name="Changes" comment="Update library paths and directives in CMakeLists.txt&#10;&#10;The update modifies the CMakeLists.txt to utilize full path for the loadEnv.cmake file, increasing accuracy and avoiding potential errors. Static MongoDB libraries have been substituted for their shared counterparts to improve stability and prevent dependencies issues.">
-      <change beforePath="$PROJECT_DIR$/.idea/workspace.xml" beforeDir="false" afterPath="$PROJECT_DIR$/.idea/workspace.xml" afterDir="false" />
-      <change beforePath="$PROJECT_DIR$/vcpkg.json" beforeDir="false" afterPath="$PROJECT_DIR$/vcpkg.json" afterDir="false" />
-    </list>
+    <list default="true" id="428c190b-fbb6-44a9-86d2-37409b6be4d3" name="Changes" comment="Update workspace configurations and refine library paths&#10;&#10;Modified the workspace settings and configurations for accuracy, such as CMake build settings, recent templates, and run configurations. Enhancements were made to paths and directives involving the MongoDB libraries for better stability and prevention of potential errors." />
     <option name="SHOW_DIALOG" value="false" />
     <option name="HIGHLIGHT_CONFLICTS" value="true" />
     <option name="HIGHLIGHT_NON_ACTIVE_CHANGELIST" value="false" />
@@ -67,56 +64,56 @@
     <option name="showMembers" value="true" />
     <option name="showVisibilityIcons" value="true" />
   </component>
-  <component name="PropertiesComponent">{
-  &quot;keyToString&quot;: {
-    &quot;CMake Application.Ergos.executor&quot;: &quot;Run&quot;,
-    &quot;CMake Debug.Ergos.executor&quot;: &quot;Debug&quot;,
-    &quot;RunOnceActivity.OpenProjectViewOnStart&quot;: &quot;true&quot;,
-    &quot;RunOnceActivity.ShowReadmeOnStart&quot;: &quot;true&quot;,
-    &quot;RunOnceActivity.cidr.known.project.marker&quot;: &quot;true&quot;,
-    &quot;RunOnceActivity.readMode.enableVisualFormatting&quot;: &quot;true&quot;,
-    &quot;SHARE_PROJECT_CONFIGURATION_FILES&quot;: &quot;true&quot;,
-    &quot;SONARLINT_PRECOMMIT_ANALYSIS&quot;: &quot;true&quot;,
-    &quot;cf.first.check.clang-format&quot;: &quot;false&quot;,
-    &quot;cidr.known.project.marker&quot;: &quot;true&quot;,
-    &quot;com.jfrog.conanplugin.addconansupport&quot;: &quot;false&quot;,
-    &quot;com.jfrog.conanplugin.conanexecutable&quot;: &quot;conan&quot;,
-    &quot;com.jfrog.conanplugin.hasbeensetup&quot;: &quot;true&quot;,
-    &quot;git-widget-placeholder&quot;: &quot;main&quot;,
-    &quot;ignore.virus.scanning.warn.message&quot;: &quot;true&quot;,
-    &quot;last_opened_file_path&quot;: &quot;/home/simon/coding/Ergos/vcpkg&quot;,
-    &quot;node.js.detected.package.eslint&quot;: &quot;true&quot;,
-    &quot;node.js.detected.package.tslint&quot;: &quot;true&quot;,
-    &quot;node.js.selected.package.eslint&quot;: &quot;(autodetect)&quot;,
-    &quot;node.js.selected.package.tslint&quot;: &quot;(autodetect)&quot;,
-    &quot;nodejs_package_manager_path&quot;: &quot;npm&quot;,
-    &quot;settings.editor.selected.configurable&quot;: &quot;preferences.pluginManager&quot;,
-    &quot;spentTimePerTaskStorage.store&quot;: &quot;{}&quot;,
-    &quot;timeTracker.activityTracker&quot;: &quot;null&quot;,
-    &quot;timeTracker.comment&quot;: &quot;Automatic?&quot;,
-    &quot;timeTracker.inactivityPeriodInMills&quot;: &quot;600000&quot;,
-    &quot;timeTracker.isAutoTrackingEnable&quot;: &quot;true&quot;,
-    &quot;timeTracker.isAutoTrackingTemporaryDisabled&quot;: &quot;false&quot;,
-    &quot;timeTracker.isManualTrackingEnable&quot;: &quot;false&quot;,
-    &quot;timeTracker.isPaused&quot;: &quot;true&quot;,
-    &quot;timeTracker.isPostAfterCommitEnabled&quot;: &quot;true&quot;,
-    &quot;timeTracker.isPostedScheduled&quot;: &quot;true&quot;,
-    &quot;timeTracker.isRunning&quot;: &quot;false&quot;,
-    &quot;timeTracker.isScheduledEnabled&quot;: &quot;true&quot;,
-    &quot;timeTracker.isWhenProjectClosedEnabled&quot;: &quot;true&quot;,
-    &quot;timeTracker.issueId&quot;: &quot;Default&quot;,
-    &quot;timeTracker.issueIdReadable&quot;: &quot;Default&quot;,
-    &quot;timeTracker.pausedTime&quot;: &quot;0&quot;,
-    &quot;timeTracker.query&quot;: &quot;&quot;,
-    &quot;timeTracker.recordedTime&quot;: &quot;0&quot;,
-    &quot;timeTracker.scheduledPeriod&quot;: &quot;19:00:0&quot;,
-    &quot;timeTracker.startTime&quot;: &quot;0&quot;,
-    &quot;timeTracker.timeInMills&quot;: &quot;0&quot;,
-    &quot;timeTracker.type&quot;: &quot;Development&quot;,
-    &quot;vue.rearranger.settings.migration&quot;: &quot;true&quot;,
-    &quot;ytplugin.issueListCompactView&quot;: &quot;true&quot;
+  <component name="PropertiesComponent"><![CDATA[{
+  "keyToString": {
+    "CMake Application.Ergos.executor": "Run",
+    "CMake Debug.Ergos.executor": "Debug",
+    "RunOnceActivity.OpenProjectViewOnStart": "true",
+    "RunOnceActivity.ShowReadmeOnStart": "true",
+    "RunOnceActivity.cidr.known.project.marker": "true",
+    "RunOnceActivity.readMode.enableVisualFormatting": "true",
+    "SHARE_PROJECT_CONFIGURATION_FILES": "true",
+    "SONARLINT_PRECOMMIT_ANALYSIS": "true",
+    "cf.first.check.clang-format": "false",
+    "cidr.known.project.marker": "true",
+    "com.jfrog.conanplugin.addconansupport": "false",
+    "com.jfrog.conanplugin.conanexecutable": "conan",
+    "com.jfrog.conanplugin.hasbeensetup": "true",
+    "git-widget-placeholder": "main",
+    "ignore.virus.scanning.warn.message": "true",
+    "last_opened_file_path": "/home/simon/coding/Ergos/vcpkg",
+    "node.js.detected.package.eslint": "true",
+    "node.js.detected.package.tslint": "true",
+    "node.js.selected.package.eslint": "(autodetect)",
+    "node.js.selected.package.tslint": "(autodetect)",
+    "nodejs_package_manager_path": "npm",
+    "settings.editor.selected.configurable": "org.jetbrains.plugins.github.ui.GithubSettingsConfigurable",
+    "spentTimePerTaskStorage.store": "{}",
+    "timeTracker.activityTracker": "null",
+    "timeTracker.comment": "Automatic?",
+    "timeTracker.inactivityPeriodInMills": "600000",
+    "timeTracker.isAutoTrackingEnable": "true",
+    "timeTracker.isAutoTrackingTemporaryDisabled": "false",
+    "timeTracker.isManualTrackingEnable": "false",
+    "timeTracker.isPaused": "true",
+    "timeTracker.isPostAfterCommitEnabled": "true",
+    "timeTracker.isPostedScheduled": "true",
+    "timeTracker.isRunning": "false",
+    "timeTracker.isScheduledEnabled": "true",
+    "timeTracker.isWhenProjectClosedEnabled": "true",
+    "timeTracker.issueId": "Default",
+    "timeTracker.issueIdReadable": "Default",
+    "timeTracker.pausedTime": "0",
+    "timeTracker.query": "",
+    "timeTracker.recordedTime": "0",
+    "timeTracker.scheduledPeriod": "19:00:0",
+    "timeTracker.startTime": "0",
+    "timeTracker.timeInMills": "0",
+    "timeTracker.type": "Development",
+    "vue.rearranger.settings.migration": "true",
+    "ytplugin.issueListCompactView": "true"
   }
-}</component>
+}]]></component>
   <component name="RecentsManager">
     <key name="MoveFile.RECENT_KEYS">
       <recent name="C:\Users\Clean\Documents\Projekte\ERGOS\cmake" />
@@ -170,6 +167,7 @@
       <workItem from="1705871274703" duration="3000" />
       <workItem from="1706135176997" duration="210000" />
       <workItem from="1706135393347" duration="1089000" />
+      <workItem from="1706136498722" duration="172000" />
     </task>
     <task id="LOCAL-00001" summary="Remove Sqlite3 dependencies&#10;&#10;Remove Sqlite3 dependencies to prepare for move to MongoDB.">
       <option name="closed" value="true" />
@@ -363,7 +361,23 @@
       <option name="project" value="LOCAL" />
       <updated>1706136443707</updated>
     </task>
-    <option name="localTasksCounter" value="25" />
+    <task id="LOCAL-00025" summary="Reorder libraries in vcpkg.json&#10;&#10;This reorganization moves the 'mongo-cxx-driver' library lower in the list within vcpkg.json file. This change does not alter any versions or dependencies but changes the order in which libraries are appeared to enhance the list's clarity.">
+      <option name="closed" value="true" />
+      <created>1706136587046</created>
+      <option name="number" value="00025" />
+      <option name="presentableId" value="LOCAL-00025" />
+      <option name="project" value="LOCAL" />
+      <updated>1706136587046</updated>
+    </task>
+    <task id="LOCAL-00026" summary="Update workspace configurations and refine library paths&#10;&#10;Modified the workspace settings and configurations for accuracy, such as CMake build settings, recent templates, and run configurations. Enhancements were made to paths and directives involving the MongoDB libraries for better stability and prevention of potential errors.">
+      <option name="closed" value="true" />
+      <created>1706136607089</created>
+      <option name="number" value="00026" />
+      <option name="presentableId" value="LOCAL-00026" />
+      <option name="project" value="LOCAL" />
+      <updated>1706136607089</updated>
+    </task>
+    <option name="localTasksCounter" value="27" />
     <servers />
   </component>
   <component name="TypeScriptGeneratedFilesManager">
@@ -386,8 +400,6 @@
     </option>
   </component>
   <component name="VcsManagerConfiguration">
-    <MESSAGE value="Update project name in .idea/.name file&#10;&#10;The name of the project in the .idea/.name file has been changed from 'Uni-Aufgaben' to 'Ergos'. This represents a change in the project's focus or direction." />
-    <MESSAGE value="Simplify module type in ERGOS.iml&#10;&#10;The ERGOS.iml file has been simplified to only specify the module classpath and type. This change removes unnecessary definitions such as 'NewModuleRootManager' and 'orderEntry', streamlining the project structure." />
     <MESSAGE value="Add misc.xml to .idea directory&#10;&#10;The new misc.xml file has been added to the .idea directory. This file comprises the main &quot;project&quot; component for CMakeWorkspace, streamlining the structure and hierarchy of the project itself." />
     <MESSAGE value="Add .env file with MongoDB connection string&#10;&#10;A new .env file has been created which contains the MongoDB connection string. The credentials and parameters are included in the string. A &quot;test&quot; setting has also been added." />
     <MESSAGE value="Update .gitignore with new files&#10;&#10;New files namely 'tmp' and '.env' have been added to .gitignore. Furthermore, the 'logs' entry has been corrected to 'log'. This ensures appropriate ignoring of temporary, environment and log files by Git." />
@@ -411,10 +423,16 @@
     <MESSAGE value="Disable Visual Studio configurations and modify generation paths&#10;&#10;Visual Studio configurations in cmake.xml file have been disabled. The generation paths have also been adjusted to reflect a different development environment. New configurations for 'Debug', 'Release', 'RelWithDebInfo', and 'MinSizeRel' have been enabled with updated paths." />
     <MESSAGE value="Update CMakeLists file with new library paths&#10;&#10;The include directive in CMakeLists.txt has been refined to use the full path to the loadEnv.cmake file instead of just LoadEnv. The shared MongoDB libraries have been replaced with their static equivalents." />
     <MESSAGE value="Update library paths and directives in CMakeLists.txt&#10;&#10;The update modifies the CMakeLists.txt to utilize full path for the loadEnv.cmake file, increasing accuracy and avoiding potential errors. Static MongoDB libraries have been substituted for their shared counterparts to improve stability and prevent dependencies issues." />
-    <option name="LAST_COMMIT_MESSAGE" value="Update library paths and directives in CMakeLists.txt&#10;&#10;The update modifies the CMakeLists.txt to utilize full path for the loadEnv.cmake file, increasing accuracy and avoiding potential errors. Static MongoDB libraries have been substituted for their shared counterparts to improve stability and prevent dependencies issues." />
+    <MESSAGE value="Reorder libraries in vcpkg.json&#10;&#10;This reorganization moves the 'mongo-cxx-driver' library lower in the list within vcpkg.json file. This change does not alter any versions or dependencies but changes the order in which libraries are appeared to enhance the list's clarity." />
+    <MESSAGE value="Update workspace configurations and refine library paths&#10;&#10;Modified the workspace settings and configurations for accuracy, such as CMake build settings, recent templates, and run configurations. Enhancements were made to paths and directives involving the MongoDB libraries for better stability and prevention of potential errors." />
+    <option name="LAST_COMMIT_MESSAGE" value="Update workspace configurations and refine library paths&#10;&#10;Modified the workspace settings and configurations for accuracy, such as CMake build settings, recent templates, and run configurations. Enhancements were made to paths and directives involving the MongoDB libraries for better stability and prevention of potential errors." />
   </component>
-  <component name="WfRunsListSearchHistory">{
-  &quot;history&quot;: [
+  <component name="WfRunsListSearchHistory"><![CDATA[{
+  "history": [
+    {
+    },
+    {
+    },
     {
     },
     {
@@ -458,9 +476,9 @@
     {
     }
   ],
-  &quot;lastFilter&quot;: {
+  "lastFilter": {
   }
-}</component>
+}]]></component>
   <component name="XDebuggerManager">
     <breakpoint-manager>
       <breakpoints>

Commit message:
Update workspace configurations and refine library paths

Modified the workspace settings and configurations for accuracy, such as CMake build settings, recent templates, and run configurations. Enhancements were made to paths and directives involving the MongoDB libraries for better stability and prevention of potential errors.

