<target name="compile_d6">
  <!-- Compile with Delphi 6 -->
  <apply executable="${d6}\Bin\dcc32" failonerror="true" output="build-d6.log" >
    <!-- rebuild quiet -->
    <arg value="-B"/>
    <arg value="-Q"/>
    <!-- file paths -->
    <arg value="-I${source};${indy10}/Lib/System"/>
    <arg value="-O${source};${indy10}/D6;${jcl}/d6"/>
    <arg value="-U${source};${indy10}/D6;${jcl}/d6"/>  
    <!-- all *.dpr files in current directory -->
    <fileset dir=".">
      <patternset><include name="*.dpr"/></patternset>
    </fileset>
  </apply>
</target>
