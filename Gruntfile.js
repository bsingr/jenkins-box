module.exports = function(grunt) {
  grunt.initConfig({
    jenkins: {
      serverAddress: 'http://localhost:8080',
      pipelineDirectory: 'jenkins-configuration'
    }
  })
  grunt.loadNpmTasks('grunt-jenkins');
  grunt.registerTask('default', ['jenkins-list']);
};
