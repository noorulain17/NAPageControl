Pod::Spec.new do |s|
  s.name         = "NAPageControl"
  s.version      = "1.3"
  s.summary      = "UIPageControl’s fancy one-upping cousin. Inspired by https://github.com/Spaceman-Labs/SMPageControl"
  s.description  = <<-DESC
    Designers love to make beautifully custom page controls that fit in with all the wood,
    gradients, and inner shadows they've worked so hard perfecting.

    Who can blame them?! NAPageControl makes it dead simple to give them what they want. Even
    better, NAPageControl is a drop in replacement for UIPageControl. It mirrors all the functions
    of UIPageControl, with literally no changes beyond the class name.
    DESC
  s.homepage     = "https://github.com/noorulain17/NAPageControl"
  s.license      = {
    :type => 'MIT',
    :text => <<-LICENSE
      Copyright (C) 2012-2020 by Spaceman Labs, Noor ul Ain Ali

      Permission is hereby granted, free of charge, to any person obtaining a copy of this software
      and associated documentation files (the "Software"), to deal in the Software without
      restriction, including without limitation the rights to use, copy, modify, merge, publish,
      distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the
      Software is furnished to do so, subject to the following conditions:

      The above copyright notice and this permission notice shall be included in all copies or
      substantial portions of the Software.

      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
      BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
      NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
      DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    LICENSE
  }
  s.author       = { "Jerry Jones" => "jerry@spacemanlabs.com",
                     "Noor ul Ain Ali" => "noorulain.ali89@gmail.com"
                   }
  s.source       = {
    :git => "https://github.com/noorulain17/NAPageControl.git",
    :tag => "1.3"
  }
  s.platform     = :ios, '8.0'
  s.source_files = 'NAPageControl.swift'
  s.requires_arc = true
  s.swift_version    = '5.0'
end
