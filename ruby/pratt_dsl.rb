# Autogenerated from a Treetop grammar. Edits may be lost.


module Pratt
	module Dsl
   include Treetop::Runtime

   def root
     @root ||= :sentence
   end

   module Sentence0
     def space1
       elements[0]
     end

     def conjunction
       elements[1]
     end

     def space2
       elements[2]
     end

     def fragment
       elements[3]
     end
   end

   module Sentence1
     def fragment
       elements[0]
     end

   end

   def _nt_sentence
     start_index = index
     if node_cache[:sentence].has_key?(index)
       cached = node_cache[:sentence][index]
       if cached
         cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
         @index = cached.interval.end
       end
       return cached
     end

     i0, s0 = index, []
     r1 = _nt_fragment
     s0 << r1
     if r1
       i3, s3 = index, []
       r4 = _nt_space
       s3 << r4
       if r4
         r5 = _nt_conjunction
         s3 << r5
         if r5
           r6 = _nt_space
           s3 << r6
           if r6
             r7 = _nt_fragment
             s3 << r7
           end
         end
       end
       if s3.last
         r3 = instantiate_node(SyntaxNode,input, i3...index, s3)
         r3.extend(Sentence0)
       else
         @index = i3
         r3 = nil
       end
       if r3
         r2 = r3
       else
         r2 = instantiate_node(SyntaxNode,input, index...index)
       end
       s0 << r2
       if r2
         if has_terminal?('.', false, index)
           r8 = instantiate_node(SyntaxNode,input, index...(index + 1))
           @index += 1
         else
           terminal_parse_failure('.')
           r8 = nil
         end
         s0 << r8
       end
     end
     if s0.last
       r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
       r0.extend(Sentence1)
     else
       @index = i0
       r0 = nil
     end

     node_cache[:sentence][start_index] = r0

     r0
   end

   module Fragment0
     def verb
       elements[0]
     end

     def space1
       elements[1]
     end

     def noun
       elements[2]
     end

     def space2
       elements[3]
     end

     def preposition
       elements[4]
     end

     def space3
       elements[5]
     end

     def temporal_literal
       elements[6]
     end
   end

   module Fragment1
				def project
					noun.to_o
				end

     def method
       verb.text_value.downcase.to_sym
     end
   end

   def _nt_fragment
     start_index = index
     if node_cache[:fragment].has_key?(index)
       cached = node_cache[:fragment][index]
       if cached
         cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
         @index = cached.interval.end
       end
       return cached
     end

     i0, s0 = index, []
     r1 = _nt_verb
     s0 << r1
     if r1
       r2 = _nt_space
       s0 << r2
       if r2
         r3 = _nt_noun
         s0 << r3
         if r3
           r4 = _nt_space
           s0 << r4
           if r4
             r5 = _nt_preposition
             s0 << r5
             if r5
               r6 = _nt_space
               s0 << r6
               if r6
                 r7 = _nt_temporal_literal
                 s0 << r7
               end
             end
           end
         end
       end
     end
     if s0.last
       r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
       r0.extend(Fragment0)
       r0.extend(Fragment1)
     else
       @index = i0
       r0 = nil
     end

     node_cache[:fragment][start_index] = r0

     r0
   end

   def _nt_conjunction
     start_index = index
     if node_cache[:conjunction].has_key?(index)
       cached = node_cache[:conjunction][index]
       if cached
         cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
         @index = cached.interval.end
       end
       return cached
     end

     if has_terminal?('and', false, index)
       r0 = instantiate_node(SyntaxNode,input, index...(index + 3))
       @index += 3
     else
       terminal_parse_failure('and')
       r0 = nil
     end

     node_cache[:conjunction][start_index] = r0

     r0
   end

   module TemporalLiteral0
   end

   def _nt_temporal_literal
     start_index = index
     if node_cache[:temporal_literal].has_key?(index)
       cached = node_cache[:temporal_literal][index]
       if cached
         cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
         @index = cached.interval.end
       end
       return cached
     end

     s0, i0 = [], index
     loop do
       i1, s1 = index, []
       i2 = index
       if has_terminal?('\G[\\ .]', true, index)
         r3 = true
         @index += 1
       else
         r3 = nil
       end
       if r3
         r2 = nil
       else
         @index = i2
         r2 = instantiate_node(SyntaxNode,input, index...index)
       end
       s1 << r2
       if r2
         if index < input_length
           r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
           @index += 1
         else
           terminal_parse_failure("any character")
           r4 = nil
         end
         s1 << r4
       end
       if s1.last
         r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
         r1.extend(TemporalLiteral0)
       else
         @index = i1
         r1 = nil
       end
       if r1
         s0 << r1
       else
         break
       end
     end
     if s0.empty?
       @index = i0
       r0 = nil
     else
       r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
     end

     node_cache[:temporal_literal][start_index] = r0

     r0
   end

   def _nt_verb
     start_index = index
     if node_cache[:verb].has_key?(index)
       cached = node_cache[:verb][index]
       if cached
         cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
         @index = cached.interval.end
       end
       return cached
     end

     i0 = index
     if has_terminal?('begin', false, index)
       r1 = instantiate_node(SyntaxNode,input, index...(index + 5))
       @index += 5
     else
       terminal_parse_failure('begin')
       r1 = nil
     end
     if r1
       r0 = r1
     else
       if has_terminal?('Begin', false, index)
         r2 = instantiate_node(SyntaxNode,input, index...(index + 5))
         @index += 5
       else
         terminal_parse_failure('Begin')
         r2 = nil
       end
       if r2
         r0 = r2
       else
         if has_terminal?('start', false, index)
           r3 = instantiate_node(SyntaxNode,input, index...(index + 5))
           @index += 5
         else
           terminal_parse_failure('start')
           r3 = nil
         end
         if r3
           r0 = r3
         else
           if has_terminal?('Start', false, index)
             r4 = instantiate_node(SyntaxNode,input, index...(index + 5))
             @index += 5
           else
             terminal_parse_failure('Start')
             r4 = nil
           end
           if r4
             r0 = r4
           else
             if has_terminal?('restart', false, index)
               r5 = instantiate_node(SyntaxNode,input, index...(index + 7))
               @index += 7
             else
               terminal_parse_failure('restart')
               r5 = nil
             end
             if r5
               r0 = r5
             else
               if has_terminal?('Restart', false, index)
                 r6 = instantiate_node(SyntaxNode,input, index...(index + 7))
                 @index += 7
               else
                 terminal_parse_failure('Restart')
                 r6 = nil
               end
               if r6
                 r0 = r6
               else
                 if has_terminal?('cease', false, index)
                   r7 = instantiate_node(SyntaxNode,input, index...(index + 5))
                   @index += 5
                 else
                   terminal_parse_failure('cease')
                   r7 = nil
                 end
                 if r7
                   r0 = r7
                 else
                   if has_terminal?('Cease', false, index)
                     r8 = instantiate_node(SyntaxNode,input, index...(index + 5))
                     @index += 5
                   else
                     terminal_parse_failure('Cease')
                     r8 = nil
                   end
                   if r8
                     r0 = r8
                   else
                     if has_terminal?('end', false, index)
                       r9 = instantiate_node(SyntaxNode,input, index...(index + 3))
                       @index += 3
                     else
                       terminal_parse_failure('end')
                       r9 = nil
                     end
                     if r9
                       r0 = r9
                     else
                       if has_terminal?('End', false, index)
                         r10 = instantiate_node(SyntaxNode,input, index...(index + 3))
                         @index += 3
                       else
                         terminal_parse_failure('End')
                         r10 = nil
                       end
                       if r10
                         r0 = r10
                       else
                         @index = i0
                         r0 = nil
                       end
                     end
                   end
                 end
               end
             end
           end
         end
       end
     end

     node_cache[:verb][start_index] = r0

     r0
   end

   def _nt_preposition
     start_index = index
     if node_cache[:preposition].has_key?(index)
       cached = node_cache[:preposition][index]
       if cached
         cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
         @index = cached.interval.end
       end
       return cached
     end

     i0 = index
     if has_terminal?('on', false, index)
       r1 = instantiate_node(SyntaxNode,input, index...(index + 2))
       @index += 2
     else
       terminal_parse_failure('on')
       r1 = nil
     end
     if r1
       r0 = r1
     else
       if has_terminal?('at', false, index)
         r2 = instantiate_node(SyntaxNode,input, index...(index + 2))
         @index += 2
       else
         terminal_parse_failure('at')
         r2 = nil
       end
       if r2
         r0 = r2
       else
         @index = i0
         r0 = nil
       end
     end

     node_cache[:preposition][start_index] = r0

     r0
   end

   module Noun0
   end

   def _nt_noun
     start_index = index
     if node_cache[:noun].has_key?(index)
       cached = node_cache[:noun][index]
       if cached
         cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
         @index = cached.interval.end
       end
       return cached
     end

     s0, i0 = [], index
     loop do
       i1, s1 = index, []
       i2 = index
       r3 = _nt_space
       if r3
         r2 = nil
       else
         @index = i2
         r2 = instantiate_node(SyntaxNode,input, index...index)
       end
       s1 << r2
       if r2
         if index < input_length
           r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
           @index += 1
         else
           terminal_parse_failure("any character")
           r4 = nil
         end
         s1 << r4
       end
       if s1.last
         r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
         r1.extend(Noun0)
       else
         @index = i1
         r1 = nil
       end
       if r1
         s0 << r1
       else
         break
       end
     end
     if s0.empty?
       @index = i0
       r0 = nil
     else
       r0 = instantiate_node(OrmLookup,input, i0...index, s0)
     end

     node_cache[:noun][start_index] = r0

     r0
   end

   def _nt_space
     start_index = index
     if node_cache[:space].has_key?(index)
       cached = node_cache[:space][index]
       if cached
         cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
         @index = cached.interval.end
       end
       return cached
     end

     if has_terminal?(' ', false, index)
       r0 = instantiate_node(SyntaxNode,input, index...(index + 1))
       @index += 1
     else
       terminal_parse_failure(' ')
       r0 = nil
     end

     node_cache[:space][start_index] = r0

     r0
   end

 end

 class DslParser < Treetop::Runtime::CompiledParser
   include Dsl
 end

end
