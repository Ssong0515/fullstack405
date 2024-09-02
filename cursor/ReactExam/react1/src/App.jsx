import { useState } from 'react'
import './App.css'

function App() {
  const [votes, setVotes] = useState({
    카리나: 0,
    윈터: 0,
    지젤: 0,
    닝닝: 0
  })

  const [comments, setComments] = useState({
    카리나: [],
    윈터: [],
    지젤: [],
    닝닝: []
  })

  const memberImages = {
    카리나: '/karina.jpg', 윈터: '/winter.jpg',
    지젤: '/giselle.jpg', 닝닝: '/ningning.jpg'
  }
  const thumbnailStyle = {
    width: '100%', height: '200px',
    objectFit: 'cover', borderRadius: '8px',
    marginBottom: '10px'
  }

  const handleVote = (member) => {
    setVotes(prevVotes => ({
      ...prevVotes,
      [member]: prevVotes[member] + 1
    }))
  }

  const handleComment = (member, comment) => {
    setComments(prevComments => ({
      ...prevComments,
      [member]: [...prevComments[member], comment]
    }))
  }

  return (
    <div className="app">
      <h1>에스파 팬 투표</h1>
      <div className="member-grid">
        {Object.entries(votes).reduce((rows, [member, count], index) => {
          if (index % 2 === 0) rows.push([]);
          rows[rows.length - 1].push(
            <div key={member} className="member-card">
              <img src={memberImages[member]} alt={member} style={thumbnailStyle} />
              <h2>{member}</h2>
              <p>투표 수: {count}</p>
              <button onClick={() => handleVote(member)}>
                {member}에게 투표
              </button>
              <div className="comments-section">
                <h3>댓글</h3>
                <ul>
                  {comments[member].map((comment, index) => (
                    <li key={index}>{comment}</li>
                  ))}
                </ul>
                <input
                  type="text"
                  placeholder="댓글을 입력하세요"
                  onKeyPress={(e) => {
                    if (e.key === 'Enter') {
                      handleComment(member, e.target.value)
                      e.target.value = ''
                    }
                  }}
                />
              </div>
            </div>
          );
          return rows;
        }, []).map((row, index) => (
          <div key={index} className="member-row">
            {row}
          </div>
        ))}
      </div>
    </div>
  )
}

export default App