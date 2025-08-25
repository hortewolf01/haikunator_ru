require_relative "../spec_helper"

describe HaikunatorRu do
  it "generates a name like still-silence-5012" do
    name = HaikunatorRu.haikunate

    expect(name).to match(/\A\p{Letter}+-\p{Letter}+-\d{1,4}\z/)
  end

  it "won't return the same name for subsequent calls" do
    name1 = HaikunatorRu.haikunate
    name2 = HaikunatorRu.haikunate

    expect(name1).not_to eql(name2)
  end

  it "permits optional configuration of the token range" do
    name = HaikunatorRu.haikunate(9)

    expect(name).to match(/-\d{1}\z/)
  end

  it "drops the token if token range is 0" do
    name = HaikunatorRu.haikunate(0)

    expect(name).to match(/\A\p{Letter}+-\p{Letter}+\z/)
  end

  it "permits optional configuration of the delimiter" do
    name = HaikunatorRu.haikunate(9999, ".")

    expect(name).to match(/\A\p{Letter}+\.\p{Letter}+\.\d{1,4}\z/)
  end

  it "drops the token and delimiter if token range is 0 and delimiter empty space" do
    name = HaikunatorRu.haikunate(0, " ")

    expect(name).to match(/\A\p{Letter}+ \p{Letter}+\z/)
  end
end
