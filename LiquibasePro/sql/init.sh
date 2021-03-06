export PATH=/Users/adeelmalik/Desktop/LiquibaseHub/liquibase-4.7.0:$PATH
export LIQUIBASE_COMMAND_URL=jdbc:oracle:thin:@demo-db1-rhel6.datical.net:1521/PP_DEV.datical.net
export LIQUIBASE_COMMAND_USERNAME=DATICAL_USER
export LIQUIBASE_COMMAND_PASSWORD=DATICAL_USER_PW
export LIQUIBASE_COMMAND_REFERENCE_URL=offline:oracle?snapshot=snapshot.json
export LIQUIBASE_COMMAND_SCHEMAS=DATICAL_USER
export LIQUIBASE_PRO_LICENSE_KEY=ABwwGgQUjxKd8KQ1fa7HHI4P0Qsq3L22wOICAgQAjkB2jF6k42cSkAOMPPHgsp+e269W6eQeasbDCM6ks26gap8UcqOJnnGmC1REO0wyJmeH6kEg9RXXdsOLpwP0ieB0m+L0qX5V312gnWEs2srdn4y2MQa00f7rkvlIGFIITA5PytTg8VOaelFuwgOG3hl9qxIG3FPFLcvWd6LZvqt4+tSil8FJ6a8kfWPyrxG73ELEtWgGuIlH7+u9DKyMMWCGELuM3+YcHNDgfac3lri30+Dz0qB2xjm5VG5ikiiG/Hikvcbm4k/mJZEDimSRR7uMjLs/MFkcRqCCmhLUareSb2TWsfrOXaZbZ/1vNjbC5Mw3P6i4jxzzSDbVUMtQ8bZiPJsmF9QzOc180sytVZI1HkBTPUVx2GVmzCHYevTY7WSenIvzHGwv6KBspZL8ZHxRSU+2foW3y1aYmEDxRaxqUKplhidWE69InLidVKVbDN2XHpSsNZVOICoY5ggBN6HL6AazokZZr/ut35oVqvwBocsbVFDmh7l4OxlUHnQjxunywLL8leZztcOA9ZDVEGWzK+0KIUmMNYc3WRJYutMFgU10oGXpNA4PWjhlzNUzbOt2roNejsmqpY5n9S9aYQ0xzsevYnvx05tYF4E/blOhE41YWfEQKZnqXRj0MDVO7p1r+SCfCL/OvejvvcuHidU4zP0DwiY3gFZHTnNAjXk=
export LIQUIBASE_COMMAND_CHANGELOG_FILE=changelog_master.xml

# liquibase --outputFile=snapshot.json snapshot --snapshotFormat=json  
# liquibase diff
# liquibase --changeLogFile=diff.xml diffChangelog