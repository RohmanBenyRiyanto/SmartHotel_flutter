"use strict";(self.webpackChunksmarthotel_flutter=self.webpackChunksmarthotel_flutter||[]).push([[617],{6441:(n,s,a)=>{a.r(s),a.d(s,{data:()=>p});const p={key:"v-b8a6b47c",path:"/auth-page/register.html",title:"Register Page",lang:"en-US",frontmatter:{},excerpt:"",headers:[],filePathRelative:"auth-page/register.md",git:{updatedTime:1638351154e3,contributors:[{name:"Restu Indrawan",email:"57904667+restuindrawan@users.noreply.github.com",commits:3}]}}},4526:(n,s,a)=>{a.r(s),a.d(s,{default:()=>e});const p=(0,a(6252).uE)('<h1 id="register-page" tabindex="-1"><a class="header-anchor" href="#register-page" aria-hidden="true">#</a> Register Page</h1><p>Register page pada aplikasi smotel kami mengimplementasikan Firebase Authentication, yang dimana memudahkan dalam membuat prosesnya tersendiri. Form disini sudah mengimplementasikan validasi yang dimana memeriksa apakah email dan passoword valid? dan juga memeriksa apabila akun ada atau tidak.</p><p>Berikut adalah kode implementasi login dengan firebase</p><div class="language-dart ext-dart line-numbers-mode"><pre class="language-dart"><code><span class="token keyword">void</span> <span class="token function">signUp</span><span class="token punctuation">(</span><span class="token class-name">String</span> email<span class="token punctuation">,</span> <span class="token class-name">String</span> password<span class="token punctuation">)</span> <span class="token keyword">async</span> <span class="token punctuation">{</span>\n    <span class="token keyword">try</span> <span class="token punctuation">{</span>\n      <span class="token keyword">await</span> auth<span class="token punctuation">.</span><span class="token function">createUserWithEmailAndPassword</span><span class="token punctuation">(</span>\n          email<span class="token punctuation">:</span> email<span class="token punctuation">,</span> password<span class="token punctuation">:</span> password<span class="token punctuation">)</span><span class="token punctuation">;</span>\n      <span class="token class-name">Get</span><span class="token punctuation">.</span><span class="token function">offAllNamed</span><span class="token punctuation">(</span><span class="token class-name">Routes</span><span class="token punctuation">.</span>NAVBAR<span class="token punctuation">)</span><span class="token punctuation">;</span>\n    <span class="token punctuation">}</span> <span class="token keyword">on</span> <span class="token class-name">FirebaseAuthException</span> <span class="token keyword">catch</span> <span class="token punctuation">(</span>e<span class="token punctuation">)</span> <span class="token punctuation">{</span>\n      <span class="token keyword">if</span> <span class="token punctuation">(</span>e<span class="token punctuation">.</span>code <span class="token operator">==</span> <span class="token string">&#39;weak-password&#39;</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>\n        <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&#39;The password provided is too weak.&#39;</span><span class="token punctuation">)</span><span class="token punctuation">;</span>\n      <span class="token punctuation">}</span> <span class="token keyword">else</span> <span class="token keyword">if</span> <span class="token punctuation">(</span>e<span class="token punctuation">.</span>code <span class="token operator">==</span> <span class="token string">&#39;email-already-in-use&#39;</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>\n        <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&#39;The account already exists for that email.&#39;</span><span class="token punctuation">)</span><span class="token punctuation">;</span>\n      <span class="token punctuation">}</span>\n    <span class="token punctuation">}</span> <span class="token keyword">catch</span> <span class="token punctuation">(</span>e<span class="token punctuation">)</span> <span class="token punctuation">{</span>\n      <span class="token function">print</span><span class="token punctuation">(</span>e<span class="token punctuation">)</span><span class="token punctuation">;</span>\n    <span class="token punctuation">}</span>\n  <span class="token punctuation">}</span>\n</code></pre><div class="line-numbers"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br><span class="line-number">14</span><br><span class="line-number">15</span><br></div></div><p>Berikut adalah kode validasi yang kami pakai</p><div class="language-dart ext-dart line-numbers-mode"><pre class="language-dart"><code><span class="token class-name">String</span><span class="token operator">?</span> <span class="token function">validateEmail</span><span class="token punctuation">(</span><span class="token class-name">String</span> value<span class="token punctuation">)</span> <span class="token punctuation">{</span>\n    <span class="token keyword">if</span> <span class="token punctuation">(</span><span class="token operator">!</span><span class="token class-name">GetUtils</span><span class="token punctuation">.</span><span class="token function">isEmail</span><span class="token punctuation">(</span>value<span class="token punctuation">)</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>\n      <span class="token keyword">return</span> <span class="token string">&quot;Provide valid Email&quot;</span><span class="token punctuation">;</span>\n    <span class="token punctuation">}</span>\n    <span class="token keyword">return</span> <span class="token keyword">null</span><span class="token punctuation">;</span>\n  <span class="token punctuation">}</span>\n\n  <span class="token class-name">String</span><span class="token operator">?</span> <span class="token function">validatePassword</span><span class="token punctuation">(</span><span class="token class-name">String</span> value<span class="token punctuation">)</span> <span class="token punctuation">{</span>\n    <span class="token keyword">if</span> <span class="token punctuation">(</span>value<span class="token punctuation">.</span>length <span class="token operator">&lt;=</span> <span class="token number">8</span><span class="token punctuation">)</span> <span class="token punctuation">{</span>\n      <span class="token keyword">return</span> <span class="token string">&quot;Password must be of 8 character&quot;</span><span class="token punctuation">;</span>\n    <span class="token punctuation">}</span>\n    <span class="token keyword">return</span> <span class="token keyword">null</span><span class="token punctuation">;</span>\n  <span class="token punctuation">}</span>\n\n  <span class="token class-name">String</span><span class="token operator">?</span> <span class="token function">comparePassword</span><span class="token punctuation">(</span><span class="token class-name">String</span> value<span class="token punctuation">)</span> <span class="token punctuation">{</span>\n    <span class="token keyword">if</span> <span class="token punctuation">(</span>value<span class="token punctuation">.</span>isEmpty<span class="token punctuation">)</span> <span class="token punctuation">{</span>\n      <span class="token keyword">return</span> <span class="token string">&quot;Password must be confirm&quot;</span><span class="token punctuation">;</span>\n    <span class="token punctuation">}</span> <span class="token keyword">else</span> <span class="token keyword">if</span> <span class="token punctuation">(</span>value <span class="token operator">!=</span> passController<span class="token punctuation">.</span>text<span class="token punctuation">)</span> <span class="token punctuation">{</span>\n      <span class="token keyword">return</span> <span class="token string">&quot;Password confirmation does not match!&quot;</span><span class="token punctuation">;</span>\n    <span class="token punctuation">}</span>\n    <span class="token keyword">return</span> <span class="token keyword">null</span><span class="token punctuation">;</span>\n  <span class="token punctuation">}</span>\n\n  <span class="token keyword">void</span> <span class="token function">checkForm</span><span class="token punctuation">(</span><span class="token punctuation">)</span> <span class="token keyword">async</span> <span class="token punctuation">{</span>\n    <span class="token keyword">final</span> isValid <span class="token operator">=</span> loginFormKey<span class="token punctuation">.</span>currentState<span class="token operator">!</span><span class="token punctuation">.</span><span class="token function">validate</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>\n    <span class="token keyword">if</span> <span class="token punctuation">(</span><span class="token operator">!</span>isValid<span class="token punctuation">)</span> <span class="token punctuation">{</span>\n      <span class="token keyword">return</span><span class="token punctuation">;</span>\n    <span class="token punctuation">}</span> <span class="token keyword">else</span> <span class="token punctuation">{</span>\n      authController<span class="token punctuation">.</span><span class="token function">signUp</span><span class="token punctuation">(</span>emailController<span class="token punctuation">.</span>text<span class="token punctuation">,</span> passController<span class="token punctuation">.</span>text<span class="token punctuation">)</span><span class="token punctuation">;</span>\n    <span class="token punctuation">}</span>\n    loginFormKey<span class="token punctuation">.</span>currentState<span class="token operator">!</span><span class="token punctuation">.</span><span class="token function">save</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">;</span>\n  <span class="token punctuation">}</span>\n</code></pre><div class="line-numbers"><span class="line-number">1</span><br><span class="line-number">2</span><br><span class="line-number">3</span><br><span class="line-number">4</span><br><span class="line-number">5</span><br><span class="line-number">6</span><br><span class="line-number">7</span><br><span class="line-number">8</span><br><span class="line-number">9</span><br><span class="line-number">10</span><br><span class="line-number">11</span><br><span class="line-number">12</span><br><span class="line-number">13</span><br><span class="line-number">14</span><br><span class="line-number">15</span><br><span class="line-number">16</span><br><span class="line-number">17</span><br><span class="line-number">18</span><br><span class="line-number">19</span><br><span class="line-number">20</span><br><span class="line-number">21</span><br><span class="line-number">22</span><br><span class="line-number">23</span><br><span class="line-number">24</span><br><span class="line-number">25</span><br><span class="line-number">26</span><br><span class="line-number">27</span><br><span class="line-number">28</span><br><span class="line-number">29</span><br><span class="line-number">30</span><br><span class="line-number">31</span><br><span class="line-number">32</span><br></div></div><p>Berikut adalah tampilannya:</p><p><img src="https://user-images.githubusercontent.com/57904667/144208849-f7c8a0b7-1e8b-4ef1-a440-c20fa5e9a2ff.png" alt="image"></p>',8),t={},e=(0,a(3744).Z)(t,[["render",function(n,s){return p}]])},3744:(n,s)=>{s.Z=(n,s)=>{const a=n.__vccOpts||n;for(const[n,p]of s)a[n]=p;return a}}}]);