require_relative '../lib/primes'

# http://oeis.org/A000040
KNOWN_PRIMES =
  [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,
  61,67,71,73,79,83,89,97,101,103,107,109,113,127,
  131,137,139,149,151,157,163,167,173,179,181,191,
  193,197,199,211,223,227,229,233,239,241,251,257,
  263,269,271]

def primality_spec(n)
  %{
      it "knows that #{n} is prime" do
        expect(Primes.include?(#{n})).to be true
      end
  }
end


generated_spec = <<-SPEC

  describe Primes do

    #{KNOWN_PRIMES.map(&method(:primality_spec)).join("\n")}

  end

SPEC

eval generated_spec
