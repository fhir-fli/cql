enum SignatureLevel {
  /*
        Indicates signatures will never be included in operator invocations
         */
  none,

  /*
        Indicates signatures will only be included in invocations if the declared signature of the resolve operator is different than the invocation signature
         */
  differing,

  /*
        Indicates signatures will only be included in invocations if the function has multiple overloads with the same number of arguments as the invocation
         */
  overloads,

  /*
        Indicates signatures will always be included in invocations
         */
  all,
}
