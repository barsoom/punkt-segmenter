# Ruby implementation of Punkt sentence tokenizer
#
# This code is a ruby port of the algorithm implemented by
# the NLTK Project. This code follows the terms and conditions
# of Apache License v2 (http://www.apache.org/licenses/LICENSE-2.0)
#
# Copyright (C) 2001-2010 NLTK Project
# Algorithm: Kiss & Strunk (2006)
# Author: Willy <willy@csse.unimelb.edu.au> (original Python port)
#         Steven Bird <sb@csse.unimelb.edu.au> (additions)
#         Edward Loper <edloper@gradient.cis.upenn.edu> (rewrite)
#         Joel Nothman <jnothman@student.usyd.edu.au> (almost rewrite)
#
#         Luis Cipriani (ruby port)
# URL: <http://www.nltk.org/>
# 
#
# The Punkt sentence tokenizer.  The algorithm for this tokenizer is
# described in Kiss & Strunk (2006)::
#
#      Kiss, Tibor and Strunk, Jan (2006): Unsupervised Multilingual Sentence
#      Boundary Detection.  Computational Linguistics 32: 485-525.
#
module Punkt
  
  # Orthographoc Context Constants
  _ORTHO_BEG_UC = 1 << 1 # Orthographoc context: beginning of sentence with upper case
  _ORTHO_MID_UC = 1 << 2 # Orthographoc context: middle of sentence with upper case
  _ORTHO_UNK_UC = 1 << 3 # Orthographoc context: unknown position in a sentence with upper case
  _ORTHO_BEG_LC = 1 << 4 # Orthographoc context: beginning of sentence with lower case
  _ORTHO_MID_LC = 1 << 5 # Orthographoc context: middle of sentence with lower case
  _ORTHO_UNK_LC = 1 << 6 # Orthographoc context: unknown position in a sentence with lower case
  _ORTHO_UC     = _ORTHO_BEG_UC + _ORTHO_MID_UC + _ORTHO_UNK_UC 
  _ORTHO_LC     = _ORTHO_BEG_LC + _ORTHO_MID_LC + _ORTHO_UNK_LC 
  _ORTHO_MAP    = {
    [:initial,  :upper] => _ORTHO_BEG_UC,
    [:internal, :upper] => _ORTHO_MID_UC,
    [:unknown,  :upper] => _ORTHO_UNK_UC,
    [:initial,  :lower] => _ORTHO_BEG_LC,
    [:internal, :lower] => _ORTHO_MID_LC,
    [:unknown,  :lower] => _ORTHO_UNK_LC,
  }

end

require "tokenizer/punkt/language_vars"
require "tokenizer/punkt/parameters"
require "tokenizer/punkt/token"
require "tokenizer/punkt/base"
require "tokenizer/punkt/trainer"
require "tokenizer/punkt/sentence_tokenizer"
