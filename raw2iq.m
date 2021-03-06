% Jiao Xianjun (putaoshu@msn.com; putaoshu@gmail.com)
% convert original uint8 data captured by rtl_sdr to double complex data.
% all variable are assumed to be column vector

function b = raw2iq(a)
c = a(1:2:end,:) + 1i.*a(2:2:end,:);
% c = a(2:2:end,:) + 1i.*a(1:2:end,:); % swap
b = c- kron(ones(size(c,1),1), ( sum(c, 1)./size(c,1) ));
