require './spec/spec_helper'
require './random_failure_reproductions/time/post'

describe Post do
  describe '#publish!' do
    subject(:publish!) { post.publish! }

    let(:post) { Post.new(title: 'hello world') }

    100000.times do
      it 'sets current time to published_at_unix_timestamp' do
        expect { publish! }.to change { post.published_at_unix_timestamp }.to Time.now.to_i
      end
    end
  end
end
