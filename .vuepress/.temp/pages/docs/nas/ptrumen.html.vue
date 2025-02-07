<template><div><h1 id="从零开始玩pt" tabindex="-1"><a class="header-anchor" href="#从零开始玩pt"><span>从零开始玩PT</span></a></h1>
<hr>
<h2 id="前言" tabindex="-1"><a class="header-anchor" href="#前言"><span>前言</span></a></h2>
<p>1PT是个小圈子，重分享，有规矩的地方。如果你不愿意与别人共享你的资源与带宽且对所谓的规则不满（实在不合理可以PM管理协商），那么请出门左拐，X宝付费拷资源和充值迅雷是你的好选择。</p>
<p>另外，PT是非营利的，捐赠被用于租用服务器和购买原盘、购买压制机器等。您的捐赠是为了网站的更好发展。所以捐赠与购买视频网站VIP是有本质上的区别的。</p>
<p>玩PT不是被PT玩，不要因为玩PT花费太多时间，而影响到你的工作和生活。</p>
<p>有问题尽量自己先百度或查看站内规则和常见问题，不要直接问。提问也要说明你遇到了什么问题，之前做了什么操作等。这样别人才好帮助你更好的解决问题，节省大家的时间。</p>
<hr>
<h2 id="一、名词解释" tabindex="-1"><a class="header-anchor" href="#一、名词解释"><span>一、名词解释</span></a></h2>
<h3 id="bt" tabindex="-1"><a class="header-anchor" href="#bt"><span>BT</span></a></h3>
<p>是一种用于对等网络中文件分享的网络协议程序。与点对点（point-to-point）的协议程序不同，其最大特点是：下载的人越多，下载速度就越快，因为下载过程中会将已下载部分文件上传给其他人。</p>
<h3 id="pt" tabindex="-1"><a class="header-anchor" href="#pt"><span>PT</span></a></h3>
<p>PT（Private Tracker）是为了解决BT中“下载就跑”的问题而产生的。其主要特点：</p>
<ol>
<li>私密的小范围下载。</li>
<li>流量统计，限制用户权限。</li>
</ol>
<p>PT网站是不公开的，采用邀请制或不定时开放注册。用户注册后会得到一个<code v-pre>passkey</code>，服务器通过<code v-pre>passkey</code>识别用户身份。</p>
<h3 id="种子" tabindex="-1"><a class="header-anchor" href="#种子"><span>种子</span></a></h3>
<p>种子文件是根据要发布的文件生成的<code v-pre>.torrent</code>文件，包含Tracker信息和文件信息。</p>
<h3 id="tracker" tabindex="-1"><a class="header-anchor" href="#tracker"><span>Tracker</span></a></h3>
<p>收集下载者信息的服务器，可理解为“电话总机”。</p>
<h3 id="dht" tabindex="-1"><a class="header-anchor" href="#dht"><span>DHT</span></a></h3>
<p>全称分布式哈希表（Distributed Hash Table），是一种分布式存储方法，无需中心服务器即可实现数据共享。</p>
<h3 id="辅种" tabindex="-1"><a class="header-anchor" href="#辅种"><span>辅种</span></a></h3>
<p>手上已有资源时下载种子，通过哈希校验后即可直接做种。</p>
<h3 id="分享率" tabindex="-1"><a class="header-anchor" href="#分享率"><span>分享率</span></a></h3>
<p>分享率 = 上传量 ÷ 下载量</p>
<hr>
<h2 id="二、新手考核" tabindex="-1"><a class="header-anchor" href="#二、新手考核"><span>二、新手考核</span></a></h2>
<p>完成新手注册后，有些PT站点会要求通过新手考核，通常包括：</p>
<ol>
<li>上传量</li>
<li>下载量</li>
<li>魔力值</li>
<li>做种率</li>
</ol>
<h3 id="新手考核的注意事项" tabindex="-1"><a class="header-anchor" href="#新手考核的注意事项"><span>新手考核的注意事项</span></a></h3>
<ol>
<li><strong>了解规则</strong>：熟悉网站的规则和常见问题。</li>
<li><strong>刷上传量</strong>：选择带有<code v-pre>free</code>或<code v-pre>2xfree</code>的种子，避免因分享率过低而被限制。</li>
<li><strong>做种率</strong>：下载体积小且做种人数多的<code v-pre>free</code>种子，快速完成下载做种。</li>
<li><strong>魔力值</strong>：通过做种数量、种子体积、种子生存时间积累魔力值。</li>
<li><strong>下载量</strong>：适量下载自己喜欢的资源，保证分享率大于1。</li>
</ol>
<hr>
<h2 id="三、制作种子、添加候选、发布" tabindex="-1"><a class="header-anchor" href="#三、制作种子、添加候选、发布"><span>三、制作种子、添加候选、发布</span></a></h2>
<h3 id="_01-命名规范" tabindex="-1"><a class="header-anchor" href="#_01-命名规范"><span>01. 命名规范</span></a></h3>
<p>保持三一致：视频（文件夹）名称、种子名称、发布标题名称一致。</p>
<h4 id="示例" tabindex="-1"><a class="header-anchor" href="#示例"><span>示例</span></a></h4>
<ul>
<li>电影：<code v-pre>Operation Red Sea 2018 BluRay 1080p x265.10bit MNHD-FRDS</code></li>
<li>电视剧：<code v-pre>The Golden Eyes 2019 EP11-EP14 WEB-DL 2160P H265 AAC</code></li>
</ul>
<h3 id="_02-制作种子" tabindex="-1"><a class="header-anchor" href="#_02-制作种子"><span>02. 制作种子</span></a></h3>
<p>使用<code v-pre>qBittorrent</code>或<code v-pre>uTorrent</code>制作种子，确保选择文件夹制作种子，勾选“私有种子”。</p>
<h3 id="_03-添加候选、发布种子" tabindex="-1"><a class="header-anchor" href="#_03-添加候选、发布种子"><span>03. 添加候选、发布种子</span></a></h3>
<p>按照网站提示填写候选信息，上传种子文件，并在候选通过后发布资源。</p>
<hr>
<h2 id="四、常见问题" tabindex="-1"><a class="header-anchor" href="#四、常见问题"><span>四、常见问题</span></a></h2>
<h3 id="客户端选择" tabindex="-1"><a class="header-anchor" href="#客户端选择"><span>客户端选择</span></a></h3>
<ul>
<li><strong>Windows</strong>: 推荐<code v-pre>ut 2.0.4</code>、<code v-pre>qBittorrent 4.1.x</code></li>
<li><strong>Linux</strong>: 推荐<code v-pre>Transmission</code></li>
</ul>
<h3 id="红种问题及解决方案" tabindex="-1"><a class="header-anchor" href="#红种问题及解决方案"><span>红种问题及解决方案</span></a></h3>
<ol>
<li><strong>Invalid passkey</strong>：重置<code v-pre>passkey</code>并重新下载种子。</li>
<li><strong>Unregistered torrent</strong>：重新下载新的种子文件。</li>
<li><strong>Client is banned</strong>：使用PT网站支持的客户端软件。</li>
</ol>
<h3 id="禁忌" tabindex="-1"><a class="header-anchor" href="#禁忌"><span>禁忌</span></a></h3>
<ol>
<li>不要更改转载资源的后缀或文件名。</li>
<li>不要对标注为“禁转”的资源进行转载。</li>
<li>不要在评论区抱怨上传速度慢。</li>
</ol>
<hr>
</div></template>


