# encoding: utf-8
require 'koara'
require 'koara/xml/xmlrenderer'
require 'minitest/autorun'

class EndToEndTest < MiniTest::Unit::TestCase

  TEST_DIR = 'testsuite'

  def setup
    @parser = Koara::Parser.new
  end

  def test_000001
    assert_output('end2end-000001', %w(paragraphs))
  end

  def test_000002
    assert_output('end2end-000002', %w(headings))
  end

  def test_000003
    assert_output('end2end-000003', %w(paragraphs headings))
  end

  def test_000004
    assert_output('end2end-000004', %w(lists))
  end

  def test_000005
    assert_output('end2end-000005', %w(paragraphs lists))
  end

  def test_000006
    assert_output('end2end-000006', %w(headings lists))
  end

  def test_000007
    assert_output('end2end-000007', %w(paragraphs headings lists))
  end

  def test_000008
    assert_output('end2end-000008', %w(links))
  end

  def test_000009
    assert_output('end2end-000009', %w(paragraphs links))
  end

  def test_000010
     assert_output('end2end-000010', %w(headings links))
   end

  def test_000011
     assert_output('end2end-000011', %w(paragraphs headings links))
  end

  def test_000012
     assert_output('end2end-000012', %w(lists links))
  end

  def test_000013
    assert_output('end2end-000013', %w(paragraphs lists links))
  end

  def test_000014
    assert_output('end2end-000014', %w(headings lists links))
  end

  def test_000015
    assert_output('end2end-000015', %w(paragraphs headings lists links))
  end

  def test_000016
    assert_output('end2end-000016', %w(images))
  end

  def test_000017
    assert_output('end2end-000017', %w(paragraphs images))
  end

  def test_000018
    assert_output('end2end-000018', %w(headings images))
  end

  def test_000019
    assert_output('end2end-000019', %w(paragraphs headings images))
  end

  def test_000020
    assert_output('end2end-000020', %w(lists images))
  end

  def test_000021
    assert_output('end2end-000021', %w(paragraphs lists images))
  end

  def test_000022
    assert_output('end2end-000022', %w(headings lists images))
  end

  def test_000023
    assert_output('end2end-000023', %w(paragraphs headings lists images))
  end

  def test_000024
    assert_output('end2end-000024', %w(links images))
  end

  def test_000025
    assert_output('end2end-000025', %w(paragraphs links images))
  end

  def test_000026
    assert_output('end2end-000026', %w(headings links images))
  end

  def test_000027
    assert_output('end2end-000027', %w(paragraphs headings links images))
  end

  def test_000028
    assert_output('end2end-000028', %w(lists links images))
  end

  def test_000029
    assert_output('end2end-000029', %w(paragraphs lists links images))
  end

  def test_000030
    assert_output('end2end-000030', %w(headings lists links images))
  end

  def test_000031
    assert_output('end2end-000031', %w(paragraphs headings lists links images))
  end

  def test_000032
    assert_output('end2end-000032', %w(formatting))
  end

  def test_000033
    assert_output('end2end-000033', %w(paragraphs formatting))
  end

  def test_000034
    assert_output('end2end-000034', %w(headings formatting))
  end

  def test_000035
    assert_output('end2end-000035', %w(paragraphs headings formatting))
  end

  def test_000036
    assert_output('end2end-000036', %w(lists formatting))
  end

  def test_000037
    assert_output('end2end-000037', %w(paragraphs lists formatting))
  end

  def test_000038
    assert_output('end2end-000038', %w(headings lists formatting))
  end

  def test_000039
    assert_output('end2end-000039', %w(paragraphs headings lists formatting))
  end

  def test_000040
    assert_output('end2end-000040', %w(links formatting))
  end

  def test_000041
    assert_output('end2end-000041', %w(paragraphs links formatting))
  end

  def test_000042
    assert_output('end2end-000042', %w(headings links formatting))
  end

  def test_000043
    assert_output('end2end-000043', %w(paragraphs headings links formatting))
  end

  def test_000044
    assert_output('end2end-000044', %w(lists links formatting))
  end

  def test_000045
    assert_output('end2end-000045', %w(paragraphs lists links formatting))
  end

  def test_000046
    assert_output('end2end-000046', %w(headings lists links formatting))
  end

  def test_000047
    assert_output('end2end-000047', %w(paragraphs headings lists links formatting))
  end

  def test_000048
    assert_output('end2end-000048', %w(images formatting))
  end

  def test_000049
    assert_output('end2end-000049', %w(paragraphs images formatting))
  end

  def test_000050
    assert_output('end2end-000050', %w(headings images formatting))
  end

  def test_000051
    assert_output('end2end-000051', %w(paragraphs headings images formatting))
  end

  def test_000052
    assert_output('end2end-000052', %w(lists images formatting))
  end

  def test_000053
    assert_output('end2end-000053', %w(paragraphs lists images formatting))
  end

  def test_000054
    assert_output('end2end-000054', %w(headings lists images formatting))
  end

  def test_000055
    assert_output('end2end-000055', %w(paragraphs headings lists images formatting))
  end

  def test_000056
    assert_output('end2end-000056', %w(links images formatting))
  end

  def test_000057
    assert_output('end2end-000057', %w(paragraphs links images formatting))
  end

  def test_000058
    assert_output('end2end-000058', %w(headings links images formatting))
  end

  def test_000059
    assert_output('end2end-000059', %w(paragraphs headings links images formatting))
  end

  def test_000060
    assert_output('end2end-000060', %w(lists links images formatting))
  end

  def test_000061
    assert_output('end2end-000061', %w(paragraphs lists links images formatting))
  end

  def test_000062
    assert_output('end2end-000062', %w(headings lists links images formatting))
  end

  def test_000063
    assert_output('end2end-000063', %w(paragraphs headings lists links images formatting))
  end

  def test_000064
    assert_output('end2end-000064', %w(blockquotes))
  end

  def test_000065
    assert_output('end2end-000065', %w(paragraphs blockquotes))
  end

  def test_000066
    assert_output('end2end-000066', %w(headings blockquotes))
  end

  def test_000067
    assert_output('end2end-000067', %w(paragraphs headings blockquotes))
  end

  def test_000068
    assert_output('end2end-000068', %w(lists blockquotes))
  end

  def test_000069
    assert_output('end2end-000069', %w(paragraphs lists blockquotes))
  end

  def test_000070
    assert_output('end2end-000070', %w(headings lists blockquotes))
  end

  def test_000071
    assert_output('end2end-000071', %w(paragraphs headings lists blockquotes))
  end

  def test_000072
    assert_output('end2end-000072', %w(links blockquotes))
  end

  def test_000073
    assert_output('end2end-000073', %w(paragraphs links blockquotes))
  end

  def test_000074
    assert_output('end2end-000074', %w(headings links blockquotes))
  end

  def test_000075
    assert_output('end2end-000075', %w(paragraphs headings links blockquotes))
  end

  def test_000076
    assert_output('end2end-000076', %w(lists links blockquotes))
  end

  def test_000077
    assert_output('end2end-000077', %w(paragraphs lists links blockquotes))
  end

  def test_000078
    assert_output('end2end-000078', %w(headings lists links blockquotes))
  end

  def test_000079
    assert_output('end2end-000079', %w(paragraphs headings lists links blockquotes))
  end

  def test_000080
    assert_output('end2end-000080', %w(images blockquotes))
  end

  def test_000081
    assert_output('end2end-000081', %w(paragraphs images blockquotes))
  end

  def test_000082
    assert_output('end2end-000082', %w(headings images blockquotes))
  end

  def test_000083
    assert_output('end2end-000083', %w(paragraphs headings images blockquotes))
  end

  def test_000084
    assert_output('end2end-000084', %w(lists images blockquotes))
  end

  def test_000085
    assert_output('end2end-000085', %w(paragraphs lists images blockquotes))
  end

  def test_000086
    assert_output('end2end-000086', %w(headings lists images blockquotes))
  end

  def test_000087
    assert_output('end2end-000087', %w(paragraphs headings lists images blockquotes))
  end

  def test_000088
    assert_output('end2end-000088', %w(links images blockquotes))
  end

  def test_000089
    assert_output('end2end-000089', %w(paragraphs links images blockquotes))
  end

  def test_000090
    assert_output('end2end-000090', %w(headings links images blockquotes))
  end

  def test_000091
    assert_output('end2end-000091', %w(paragraphs headings links images blockquotes))
  end

  def test_000092
    assert_output('end2end-000092', %w(lists links images blockquotes))
  end

  def test_000093
    assert_output('end2end-000093', %w(paragraphs lists links images blockquotes))
  end

  def test_000094
    assert_output('end2end-000094', %w(headings lists links images blockquotes))
  end

  def test_000095
    assert_output('end2end-000095', %w(paragraphs headings lists links images blockquotes))
  end

  def test_000096
    assert_output('end2end-000096', %w(formatting blockquotes))
  end

  def test_000097
    assert_output('end2end-000097', %w(paragraphs formatting blockquotes))
  end

  def test_000098
    assert_output('end2end-000098', %w(headings formatting blockquotes))
  end

  def test_000099
    assert_output('end2end-000099', %w(paragraphs headings formatting blockquotes))
  end

  def test_000100
    assert_output('end2end-000100', %w(lists formatting blockquotes))
  end

  def test_000101
    assert_output('end2end-000101', %w(paragraphs lists formatting blockquotes))
  end

  def test_000102
    assert_output('end2end-000102', %w(headings lists formatting blockquotes))
  end

  def test_000103
    assert_output('end2end-000103', %w(paragraphs headings lists formatting blockquotes))
  end

  def test_000104
    assert_output('end2end-000104', %w(links formatting blockquotes))
  end

  def test_000105
    assert_output('end2end-000105', %w(paragraphs links formatting blockquotes))
  end

  def test_000106
    assert_output('end2end-000106', %w(headings links formatting blockquotes))
  end

  def test_000107
    assert_output('end2end-000107', %w(paragraphs headings links formatting blockquotes))
  end

  def test_000108
    assert_output('end2end-000108', %w(lists links formatting blockquotes))
  end

  def test_000109
    assert_output('end2end-000109', %w(paragraphs lists links formatting blockquotes))
  end

  def test_000110
    assert_output('end2end-000110', %w(headings lists links formatting blockquotes))
  end

  def test_000111
    assert_output('end2end-000111', %w(paragraphs headings lists links formatting blockquotes))
  end

  def test_000112
    assert_output('end2end-000112', %w(images formatting blockquotes))
  end

  def test_000113
    assert_output('end2end-000113', %w(paragraphs images formatting blockquotes))
  end

  def test_000114
    assert_output('end2end-000114', %w(headings images formatting blockquotes))
  end

  def test_000115
    assert_output('end2end-000115', %w(paragraphs headings images formatting blockquotes))
  end

  def test_000116
    assert_output('end2end-000116', %w(lists images formatting blockquotes))
  end

  def test_000117
    assert_output('end2end-000117', %w(paragraphs lists images formatting blockquotes))
  end

  def test_000118
    assert_output('end2end-000118', %w(headings lists images formatting blockquotes))
  end

  def test_000119
    assert_output('end2end-000119', %w(paragraphs headings lists images formatting blockquotes))
  end

  def test_000120
    assert_output('end2end-000120', %w(links images formatting blockquotes))
  end

  def test_000121
    assert_output('end2end-000121', %w(paragraphs links images formatting blockquotes))
  end

  def test_000122
    assert_output('end2end-000122', %w(headings links images formatting blockquotes))
  end

  def test_000123
    assert_output('end2end-000123', %w(paragraphs headings links images formatting blockquotes))
  end

  def test_000124
    assert_output('end2end-000124', %w(lists links images formatting blockquotes))
  end

  def test_000125
    assert_output('end2end-000125', %w(paragraphs lists links images formatting blockquotes))
  end

  def test_000126
    assert_output('end2end-000126', %w(headings lists links images formatting blockquotes))
  end

  def test_000127
     assert_output('end2end-000127', %w(paragraphs headings lists links images formatting blockquotes))
  end

  def test_000128
     assert_output('end2end-000128', %w(code))
  end

  def test_000129
    assert_output('end2end-000129', %w(paragraphs code))
  end

  def test_000130
    assert_output('end2end-000130', %w(headings code))
  end

  def test_000131
    assert_output('end2end-000131', %w(paragraphs headings code))
  end

  def test_000132
    assert_output('end2end-000132', %w(lists code))
  end

  def test_000133
    assert_output('end2end-000133', %w(paragraphs lists code))
  end

  def test_000134
    assert_output('end2end-000134', %w(headings lists code))
  end

  def test_000135
    assert_output('end2end-000135', %w(paragraphs headings lists code))
  end

  def test_000136
    assert_output('end2end-000136', %w(links code))
  end

  def test_000137
    assert_output('end2end-000137', %w(paragraphs links code))
  end

  def test_000138
    assert_output('end2end-000138', %w(headings links code))
  end

  def test_000139
    assert_output('end2end-000139', %w(paragraphs headings links code))
  end

  def test_000140
    assert_output('end2end-000140', %w(lists links code))
  end

  def test_000141
    assert_output('end2end-000141', %w(paragraphs lists links code))
  end

  def test_000142
    assert_output('end2end-000142', %w(headings lists links code))
  end

  def test_000143
    assert_output('end2end-000143', %w(paragraphs headings lists links code))
  end

  def test_000144
    assert_output('end2end-000144', %w(images code))
  end

  def test_000145
    assert_output('end2end-000145', %w(paragraphs images code))
  end

  def test_000146
    assert_output('end2end-000146', %w(headings images code))
  end

  def test_000147
    assert_output('end2end-000147', %w(paragraphs headings images code))
  end

  def test_000148
    assert_output('end2end-000148', %w(lists images code))
  end

  def test_000149
    assert_output('end2end-000149', %w(paragraphs lists images code))
  end

  def test_000150
    assert_output('end2end-000150', %w(headings lists images code))
  end

  def test_000151
    assert_output('end2end-000151', %w(paragraphs headings lists images code))
  end

  def test_000152
    assert_output('end2end-000152', %w(links images code))
  end

  def test_000153
    assert_output('end2end-000153', %w(paragraphs links images code))
  end

  def test_000154
    assert_output('end2end-000154', %w(headings links images code))
  end

  def test_000155
    assert_output('end2end-000155', %w(paragraphs headings links images code))
  end

  def test_000156
    assert_output('end2end-000156', %w(lists links images code))
  end

  def test_000157
    assert_output('end2end-000157', %w(paragraphs lists links images code))
  end

  def test_000158
    assert_output('end2end-000158', %w(headings lists links images code))
  end

  def test_000159
    assert_output('end2end-000159', %w(paragraphs headings lists links images code))
  end

  def test_000160
    assert_output('end2end-000160', %w(formatting code))
  end

  def test_000161
    assert_output('end2end-000161', %w(paragraphs formatting code))
  end

  def test_000162
    assert_output('end2end-000162', %w(headings formatting code))
  end

  def test_000163
    assert_output('end2end-000163', %w(paragraphs headings formatting code))
  end

  def test_000164
    assert_output('end2end-000164', %w(lists formatting code))
  end

  def test_000165
    assert_output('end2end-000165', %w(paragraphs lists formatting code))
  end

  def test_000166
    assert_output('end2end-000166', %w(headings lists formatting code))
  end

  def test_000167
    assert_output('end2end-000167', %w(paragraphs headings lists formatting code))
  end

  def test_000168
    assert_output('end2end-000168', %w(links formatting code))
  end

  def test_000169
    assert_output('end2end-000169', %w(paragraphs links formatting code))
  end

  def test_000170
    assert_output('end2end-000170', %w(headings links formatting code))
  end

  def test_000171
    assert_output('end2end-000171', %w(paragraphs headings links formatting code))
  end

  def test_000172
    assert_output('end2end-000172', %w(lists links formatting code))
  end

  def test_000173
    assert_output('end2end-000173', %w(paragraphs lists links formatting code))
  end

  def test_000174
    assert_output('end2end-000174', %w(headings lists links formatting code))
  end

  def test_000175
    assert_output('end2end-000175', %w(paragraphs headings lists links formatting code))
  end

  def test_000176
    assert_output('end2end-000176', %w(images formatting code))
  end

  def test_000177
    assert_output('end2end-000177', %w(paragraphs images formatting code))
  end

  def test_000178
    assert_output('end2end-000178', %w(headings images formatting code))
  end

  def test_000179
    assert_output('end2end-000179', %w(paragraphs headings images formatting code))
  end

  def test_000180
    assert_output('end2end-000180', %w(lists images formatting code))
  end

  def test_000181
    assert_output('end2end-000181', %w(paragraphs lists images formatting code))
  end

  def test_000182
    assert_output('end2end-000182', %w(headings lists images formatting code))
  end

  def test_000183
    assert_output('end2end-000183', %w(paragraphs headings lists images formatting code))
  end

  def test_000184
    assert_output('end2end-000184', %w(links images formatting code))
  end

  def test_000185
    assert_output('end2end-000185', %w(paragraphs links images formatting code))
  end

  def test_000186
    assert_output('end2end-000186', %w(headings links images formatting code))
  end

  def test_000187
    assert_output('end2end-000187', %w(paragraphs headings links images formatting code))
  end

  def test_000188
    assert_output('end2end-000188', %w(lists links images formatting code))
  end

  def test_000189
    assert_output('end2end-000189', %w(paragraphs lists links images formatting code))
  end

  def test_000190
    assert_output('end2end-000190', %w(headings lists links images formatting code))
  end

  def test_000191
    assert_output('end2end-000191', %w(paragraphs headings lists links images formatting code))
  end

  def test_000192
    assert_output('end2end-000192', %w(blockquotes code))
  end

  def test_000193
    assert_output('end2end-000193', %w(paragraphs blockquotes code))
  end

  def test_000194
    assert_output('end2end-000194', %w(headings blockquotes code))
  end

  def test_000195
    assert_output('end2end-000195', %w(paragraphs headings blockquotes code))
  end

  def test_000196
    assert_output('end2end-000196', %w(lists blockquotes code))
  end

  def test_000197
    assert_output('end2end-000197', %w(paragraphs lists blockquotes code))
  end

  def test_000198
    assert_output('end2end-000198', %w(headings lists blockquotes code))
  end

  def test_000199
    assert_output('end2end-000199', %w(paragraphs headings lists blockquotes code))
  end

  def test_000200
    assert_output('end2end-000200', %w(links blockquotes code))
  end

  def test_000201
    assert_output('end2end-000201', %w(paragraphs links blockquotes code))
  end

  def test_000202
    assert_output('end2end-000202', %w(headings links blockquotes code))
  end

  def test_000203
    assert_output('end2end-000203', %w(paragraphs headings links blockquotes code))
  end

  def test_000204
    assert_output('end2end-000204', %w(lists links blockquotes code))
  end

  def test_000205
    assert_output('end2end-000205', %w(paragraphs lists links blockquotes code))
  end

  def test_000206
    assert_output('end2end-000206', %w(headings lists links blockquotes code))
  end

  def test_000207
    assert_output('end2end-000207', %w(paragraphs headings lists links blockquotes code))
  end

  def test_000208
    assert_output('end2end-000208', %w(images blockquotes code))
  end

  def test_000209
    assert_output('end2end-000209', %w(paragraphs images blockquotes code))
  end

  def test_000210
    assert_output('end2end-000210', %w(headings images blockquotes code))
  end

  def test_000211
    assert_output('end2end-000211', %w(paragraphs headings images blockquotes code))
  end

  def test_000212
    assert_output('end2end-000212', %w(lists images blockquotes code))
  end

  def test_000213
    assert_output('end2end-000213', %w(paragraphs lists images blockquotes code))
  end

  def test_000214
    assert_output('end2end-000214', %w(headings lists images blockquotes code))
  end

  def test_000215
    assert_output('end2end-000215', %w(paragraphs headings lists images blockquotes code))
  end

  def test_000216
    assert_output('end2end-000216', %w(links images blockquotes code))
  end

  def test_000217
    assert_output('end2end-000217', %w(paragraphs links images blockquotes code))
  end

  def test_000218
    assert_output('end2end-000218', %w(headings links images blockquotes code))
  end

  def test_000219
    assert_output('end2end-000219', %w(paragraphs headings links images blockquotes code))
  end

  def test_000220
    assert_output('end2end-000220', %w(lists links images blockquotes code))
  end

  def test_000221
    assert_output('end2end-000221', %w(paragraphs lists links images blockquotes code))
  end

  def test_000222
    assert_output('end2end-000222', %w(headings lists links images blockquotes code))
  end

  def test_000223
    assert_output('end2end-000223', %w(paragraphs headings lists links images blockquotes code))
  end

  def test_000224
    assert_output('end2end-000224', %w(formatting blockquotes code))
  end

  def test_000225
    assert_output('end2end-000225', %w(paragraphs formatting blockquotes code))
  end

  def test_000226
    assert_output('end2end-000226', %w(headings formatting blockquotes code))
  end

  def test_000227
    assert_output('end2end-000227', %w(paragraphs headings formatting blockquotes code))
  end

  def test_000228
    assert_output('end2end-000228', %w(lists formatting blockquotes code))
  end

  def test_000229
    assert_output('end2end-000229', %w(paragraphs lists formatting blockquotes code))
  end

  def test_000230
    assert_output('end2end-000230', %w(headings lists formatting blockquotes code))
  end

  def test_000231
    assert_output('end2end-000231', %w(paragraphs headings lists formatting blockquotes code))
  end

  def test_000232
    assert_output('end2end-000232', %w(links formatting blockquotes code))
  end

  def test_000233
    assert_output('end2end-000233', %w(paragraphs links formatting blockquotes code))
  end

  def test_000234
    assert_output('end2end-000234', %w(headings links formatting blockquotes code))
  end

  def test_000235
    assert_output('end2end-000235', %w(paragraphs headings links formatting blockquotes code))
  end

  def test_000236
    assert_output('end2end-000236', %w(lists links formatting blockquotes code))
  end

  def test_000237
    assert_output('end2end-000237', %w(paragraphs lists links formatting blockquotes code))
  end

  def test_000238
    assert_output('end2end-000238', %w(headings lists links formatting blockquotes code))
  end

  def test_000239
    assert_output('end2end-000239', %w(paragraphs headings lists links formatting blockquotes code))
  end

  def test_000240
    assert_output('end2end-000240', %w(images formatting blockquotes code))
  end

  def test_000241
    assert_output('end2end-000241', %w(paragraphs images formatting blockquotes code))
  end

  def test_000242
    assert_output('end2end-000242', %w(headings images formatting blockquotes code))
  end

  def test_000243
    assert_output('end2end-000243', %w(paragraphs headings images formatting blockquotes code))
  end

  def test_000244
    assert_output('end2end-000244', %w(lists images formatting blockquotes code))
  end

  def test_000245
    assert_output('end2end-000245', %w(paragraphs lists images formatting blockquotes code))
  end

  def test_000246
    assert_output('end2end-000246', %w(headings lists images formatting blockquotes code))
  end

  def test_000247
    assert_output('end2end-000247', %w(paragraphs headings lists images formatting blockquotes code))
  end

  def test_000248
    assert_output('end2end-000248', %w(links images formatting blockquotes code))
  end

  def test_000249
    assert_output('end2end-000249', %w(paragraphs links images formatting blockquotes code))
  end

  def test_000250
    assert_output('end2end-000250', %w(headings links images formatting blockquotes code))
  end

  def test_000251
    assert_output('end2end-000251', %w(paragraphs headings links images formatting blockquotes code))
  end

  def test_000252
    assert_output('end2end-000252', %w(lists links images formatting blockquotes code))
  end

  def test_000253
    assert_output('end2end-000253', %w(paragraphs lists links images formatting blockquotes code))
  end

  def test_000254
    assert_output('end2end-000254', %w(headings lists links images formatting blockquotes code))
  end

  def test_000255
    assert_output('end2end-000255', %w(paragraphs headings lists links images formatting blockquotes code))
  end

  def assert_output(file, modules)
    kd = File.read("#{TEST_DIR}/input/end2end.kd")
    html = File.read("#{TEST_DIR}/output/html5/end2end/#{file}.htm")

    parser = Koara::Parser.new

    parser.modules = modules

    document = parser.parse_file(File.new("#{TEST_DIR}/input/end2end.kd"))
    renderer = Koara::Xml::XmlRenderer.new
    document.accept(renderer)

    assert_equal(html, renderer.output)

  end

end
